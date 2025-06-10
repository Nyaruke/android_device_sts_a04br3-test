# TAB-A04-BR3 TWRP Device Tree

## デバイスの情報
- **Device:** TAB-A04-BR3
- **SoC:** MediaTek MT8167B
- **CPU:** Cortex-A35
- **GPU:** PowerVR GE8300
- **RAM:** LPDDR3 2GB
- **ROM:** eMMC 16GB

## 現在の状況
カーネルは動くがLineageOSのブートアニメーションが出ず起動しません。
LineageOSリカバリは正常に動作します。

## ビルド方法
LineageOS14.1ではビルド時にjackのエラーが出ます。

https://plaza.rakuten.co.jp/solarisintel/diary/202110120000/

https://xdaforums.com/t/discussion-how-to-fix-jack-server-failing-to-build-with-error-try-jack-diagnose.3575179/

ビルドスクリプトを実行:
   ```sh
   bash try_build.sh
   ```

## 外部リンク
- [LineageOS Wiki](https://wiki.lineageos.org/)
- [AOSP Device Tree Guide](https://source.android.com/docs/setup/start/building)

## 注意
これは実験的なリポジトリです。全て自己責任で使用してください。
