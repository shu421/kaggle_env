# kaggleのpython環境をベースにする
# FROM gcr.io/kaggle-gpu-images/python
FROM kaggle/python-gpu-build

COPY .kaggle/ /.kaggle/

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install kaggle iterative-stratification japanize-matplotlib torch torchvision torchaudio