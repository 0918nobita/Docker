# 公式の Python ランタイムを親イメージとして使用
FROM python:2.7-slim

# 作業ディレクトリを /app に設定
WORKDIR /app

# 現在のディレクトリの内容を、コンテナ内の /app にコピー
ADD . /app

# requirements.txt で指定された必要なパッケージを全てインストール
RUN pip install -r requirements.txt

# ポート 80 番をコンテナ外の世界でも利用可能に
EXPOSE 80

# 環境変数の定義
ENV NAME world

# コンテナ起動時に app.py を実行
CMD ["python", "app.py"]
