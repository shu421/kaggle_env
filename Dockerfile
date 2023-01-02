# kaggleのpython環境をベースにする
# FROM gcr.io/kaggle-gpu-images/python
FROM kaggle/python-gpu-build

COPY .kaggle/ /root/.kaggle/

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install kaggle iterative-stratification japanize-matplotlib black && \
    pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu116