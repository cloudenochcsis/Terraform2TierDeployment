# AWS KMS Encryption & Key Management

## 1. Customer Managed Keys (CMK)
Dedicated AWS KMS Customer Managed Keys (CMKs) enforce envelope encryption across data stores.

## 2. Key Rotation
Automatic annual key rotation is enabled on all CMKs in accordance with CIS AWS Foundations benchmarks.


## 3. KMS Key Policy & Least Privilege
Key policies grant encryption/decryption permissions exclusively to authorized service principals (`rds.amazonaws.com`, `ec2.amazonaws.com`) and project administrative roles.


