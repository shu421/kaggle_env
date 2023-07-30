# kaggleのpython環境をベースにする
FROM nvcr.io/nvidia/pytorch:23.04-py3

COPY .kaggle/ /root/.kaggle/

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install -r requirements.txt
