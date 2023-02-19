# Kaggle用GPU環境構築リポジトリ

- dockerによる環境構築
1. competitions/にコンペのディレクトリを作成する
2. Dockerfileのパスをコンペディレクトリに変更
3. 下記のコマンドによってコンテナをbuild
```
docker compose up -d
```
