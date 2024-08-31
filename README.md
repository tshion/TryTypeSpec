# TryTypeSpec
[TypeSpec](https://typespec.io/) の試し書き。
本リポジトリではTypeSpec からJSON Schema を出力するサンプルを整備している。

パス | 用途
--- | ---
[models/](./models/) | TypeSpec のモデル定義
[types/](./types/) | TypeSpec に独自追加した型
[main.tsp](./main.tsp) | TypeSpec のエントリーポイント



## Getting started
Node.js (※[バージョン情報](./.node-version)) が使える環境で下記コマンドを実行してください。

``` shell
npm ci
npm run build
```



## Notes
### 型の決め方
* signed のものを採用する
* 数値型は `float64`, `int32` にする
