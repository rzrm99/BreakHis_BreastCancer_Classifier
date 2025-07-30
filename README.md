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

![ROC Curve](./roc_curve.png)

---

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

