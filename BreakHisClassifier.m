clc;
clear;

%% Set up datastore
dataDir = 'D:\Coding\MATLAB_ML\archive(7)\BreakHis_v1\BreakHis_v1\histology_slides\breast';

imds = imageDatastore(dataDir, ...
    'IncludeSubfolders', true, ...
    'LabelSource', 'none', ...
    'FileExtensions', '.png');

% Assign labels from folder structure
allFiles = imds.Files;
labels = strings(length(allFiles),1);

for i = 1:length(allFiles)
    if contains(allFiles{i}, 'benign', 'IgnoreCase', true)
        labels(i) = 'benign';
    elseif contains(allFiles{i}, 'malignant', 'IgnoreCase', true)
        labels(i) = 'malignant';
    else
        labels(i) = 'unknown';
    end
end

imds.Labels = categorical(labels);

% Resize images to SqueezeNet input size
imds.ReadFcn = @(x) imresize(imread(x), [227 227]);

% Show label distribution
disp('Label counts:');
countEachLabel(imds)




%% Split dataset
[imdsTrain, imdsTest] = splitEachLabel(imds, 0.7, 'randomized');

%% Load pretrained SqueezeNet
net = squeezenet;
lgraph = layerGraph(net);

% Get number of classes
numClasses = numel(categories(imdsTrain.Labels));

% Check actual layer names in your version of SqueezeNet
layers = lgraph.Layers;
disp("List of layers in SqueezeNet:");
for i = 1:numel(layers)
    fprintf("%2d: %s (%s)\n", i, layers(i).Name, class(layers(i)));
end


% Replace final conv layer
newConv = convolution2dLayer(1, numClasses, ...
    'Name', 'new_conv', ...
    'WeightLearnRateFactor', 10, ...
    'BiasLearnRateFactor', 10);
lgraph = replaceLayer(lgraph, 'conv10', newConv);
% Replace classification layer
newClassLayer = classificationLayer('Name', 'new_class');
lgraph = replaceLayer(lgraph, 'ClassificationLayer_predictions', newClassLayer);
%% Training options
options = trainingOptions('adam', ...
    'MiniBatchSize', 32, ...
    'MaxEpochs', 6, ...
    'InitialLearnRate', 1e-4, ...
    'Shuffle', 'every-epoch', ...
    'ValidationData', imdsTest, ...
    'ValidationFrequency', 30, ...
    'Verbose', false, ...
    'Plots', 'training-progress', ...
    'ExecutionEnvironment', 'gpu');  % GPU enabled


%% Train the network
trainedNet = trainNetwork(imdsTrain, lgraph, options);

%% Evaluate the network
YPred = classify(trainedNet, imdsTest);
YTrue = imdsTest.Labels;

accuracy = mean(YPred == YTrue);
fprintf('\nTest Accuracy: %.2f%%\n', accuracy * 100);

% Plot confusion matrix
figure;
confusionchart(YTrue, YPred);
title('Confusion Matrix');

% ROC Curve (optional)
[~, scores] = classify(trainedNet, imdsTest);
[fp, tp, ~, AUC] = perfcurve(double(YTrue == 'malignant'), scores(:,2), 1);
figure;
plot(fp, tp, 'LineWidth', 2);
xlabel('False Positive Rate'); ylabel('True Positive Rate');
title(sprintf('ROC Curve (AUC = %.3f)', AUC));
grid on;
save('BreakHis_SqueezeNet_Trained.mat', 'trainedNet');
