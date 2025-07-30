# BreakHis_BreastCancer_Classifier


# BreakHis Breast Cancer Classifier (SqueezeNet - MATLAB)

This project uses a pretrained **SqueezeNet** CNN to classify **benign vs. malignant** breast cancer tissue images from the **BreakHis** dataset.

## 🧠 Model
- CNN: Transfer learning with SqueezeNet
- Accuracy: ~94% (AUC: 0.981)
- Epochs: 6
- Trained on: BreakHis dataset (7.9K images)

## 📁 Files

| File                             | Description                              |
|----------------------------------|------------------------------------------|
| `BreakHisClassifier.m`           | Full MATLAB training + evaluation script |
| `BreakHis_SqueezeNet_Trained.mat`| Trained CNN model                        |

## 📦 Requirements

- MATLAB R2021+ (recommended)
- Deep Learning Toolbox
- Pretrained SqueezeNet (Add-On)
- GPU optional (supports CUDA)

## 🚀 Usage

1. Open `BreakHisClassifier.m` in MATLAB
2. Set the path to the BreakHis dataset
3. Run the script to retrain or evaluate

---

## 📊 Performance Snapshot

- Test Accuracy: 94.18%
- ROC AUC: 0.981
<img width="1222" height="902" alt="Figure_1" src="https://github.com/user-attachments/assets/fda4d3d5-9c0c-4b90-8455-a421a104eb1b" />

<img width="987" height="757" alt="image" src="https://github.com/user-attachments/assets/78b8cd14-6036-4e32-85d5-e35d103f7694" />



## 🔬 Dataset
BreakHis histopathological dataset:  
https://www.kaggle.com/datasets/ambarish/breakhis

---


---

## ⚠️ Disclaimer

This project is provided strictly for educational and research purposes.

- Not for clinical use: The model has not been validated, certified, or approved for use in any medical or diagnostic context. It should not be used to inform or influence healthcare decisions.

- No medical guarantees: This software does not provide medical advice and is not intended to diagnose, treat, cure, or prevent any disease or health condition. Its outputs are not a substitute for consultation with a licensed medical professional.

- Use at your own risk: The author assumes no responsibility or legal liability for any consequences arising from the use or misuse of this code or its results in real-world applications.

Always seek guidance from a qualified healthcare provider before making any medical decisions based on experimental software or artificial intelligence models.

