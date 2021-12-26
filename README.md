# aws-infra
practice

## デプロイ
```bash
# まとめて構築
$ sh create_all.sh dev default

# 個別
$ sh scripts/01_s3.sh dev default
```

## 削除
```bash
$ aws cloudformation delete-stack --profile "default" --stack-name "aws-infra"
$ aws cloudformation wait stack-delete-complete --profile "default" --stack-name "aws-infra"
```
