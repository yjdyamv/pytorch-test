# Swin Transformer - PyTorch 图像分类

基于 PyTorch 的 [Swin Transformer](https://arxiv.org/pdf/2103.14030) 图像分类实现，在 flower_photos 数据集上训练和验证。

本仓库从 PyTorch 1.9 迁移至 **PyTorch 2.12** + **torchvision 0.27**，支持 CUDA 12.6，并使用 **uv** 作为包管理器，兼容 NumPy 2。

对于pytorch 的 gpu版本使用的是 南大镜像 ，国内下载飞快。直接`uv sync`就可以恢复环境了。

## 下载

### 数据集

下载 [flower_photos](https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz) 并解压到项目根目录。

### 预训练权重

默认使用 Swin-Tiny (ImageNet-1K) 权重：

```bash
curl -L -O https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth
```

下载后放在项目根目录即可

## 快速开始

```bash
uv sync
uv run swin_transformer/train.py --data-path ./flower_photos --weights "" --epochs 20 # 不使用预训练权重（不太推荐），推荐使用预训练权重
uv run swin_transformer/predict.py --img-path <图片路径>
```

## 模型变体

| 模型 | 参数量 | 预训练权重 |
|------|--------|-----------|
| Swin-Tiny | 28M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_tiny_patch4_window7_224.pth) |
| Swin-Small | 50M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_small_patch4_window7_224.pth) |
| Swin-Base (224) | 88M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_base_patch4_window7_224.pth) |
| Swin-Base (384) | 88M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_base_patch4_window12_384.pth) |
| Swin-Base (224, 22K) | 88M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_base_patch4_window7_224_22k.pth) |
| Swin-Base (384, 22K) | 88M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_base_patch4_window12_384_22k.pth) |
| Swin-Large (224, 22K) | 197M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_large_patch4_window7_224_22k.pth) |
| Swin-Large (384, 22K) | 197M | [下载](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_large_patch4_window12_384_22k.pth) |

## 使用指南

详见 [`swin_transformer/README.md`](swin_transformer/README.md)。

## 致谢

- 原始实现: [microsoft/Swin-Transformer](https://github.com/microsoft/Swin-Transformer)
- 论文: [Swin Transformer: Hierarchical Vision Transformer using Shifted Windows](https://arxiv.org/pdf/2103.14030)
