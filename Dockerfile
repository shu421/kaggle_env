# kaggleのpython環境をベースにする
FROM nvcr.io/nvidia/pytorch:23.04-py3

COPY .kaggle/ /root/.kaggle/
COPY kaggle_env/requirements.txt ./

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install --no-cache-dir -r requirements.txt
