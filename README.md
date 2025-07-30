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

This project is intended **solely for research and educational purposes**.

- ❌ It is **not approved for clinical or diagnostic use**.
- 🧪 Results should **not** be used to make medical decisions.
- 🩺 A qualified healthcare professional must supervise any use of the outputs.
- 🛑 The author is **not liable** for any misuse, harm, or damages resulting from this code.

Always consult a licensed physician or pathologist for medical evaluation.

