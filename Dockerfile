# alpine linux をインストール (シンプルで容量が小さい起動が早いlinuxだそう)
FROM alpine
# apkのパッケージマネージャを最新にし、nodejsをインストール
RUN apk update && apk add nodejs
# dockerの今のディレクトリにあるファイルをみんなコンテナにコピー
COPY . /app
# ワーキングディレクトリをコンテナ内に設定
WORKDIR /app
# コンテナで "node index.js"を実行
CMD ["node","index.js"]
