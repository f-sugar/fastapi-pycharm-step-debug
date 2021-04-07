# fastapi-pycharm-step-debug

## 概要
- PyCharm で FastAPI (on Docker) をステップデバッグする。

## 環境
- Docker 20.10.5
- docker-compose 1.28.5
- PyCharm 2020.3.5 (Professional Edition)

## 事前準備
### コンテナのビルド
```
$ make build
```

### 起動
```
$ make dev
```

### 動作確認
```
$ $ curl localhost:8000
{"status":"ok"}
```

### 停止
```
$ make down
```

## PyCharm の設定
### インタプリタの設定
- PyCharm > Preferences > Project > Python Interpreter
- 歯車アイコンをクリックして `Add`。
![alt](./images/1.png)

- `Docker Compose` を選んで画像のように入力して `OK`
![alt](./images/2.png)

- フォルダのアイコンをクリックしてパスをマッピングする。
![alt](./images/3.png)

- `Local Path` にローカルのプロジェクトのパス、 `Remote Path` には Docker コンテナ内のコードを配置するパスを入力して `OK`
![alt](./images/4.png)

- `Apply` して `OK`
![alt](./images/5.png)

### デバッグ設定
- Run > Edit Configurations
- `+` をクリックして `Python` を選択
![alt](./images/6.png)

- 画像の内容で入力して `Apply` して `OK`
![alt](./images/7.png)
- `Name` に適当に名前を入力。今回は `api`。
- `Script path` にはローカルのエントリーポイントとなるファイルのパスを入力。
- `Working directory` はローカルのプロジェクトルートを入力。

### デバッグ実行
- ブレイクポイントを付ける。
![alt](./images/8.png)

- 実行する対象に `api` を選択。
![alt](./images/9.png)

- デバッグアイコンをクリックすると、コンテナが起動する
![alt](./images/10.png)

- `http://localhost:8000` で api を実行するとブレイクポイントで止まる。
![alt](./images/11.png)
