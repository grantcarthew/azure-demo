export $(cat .env | grep -i '^[a-z]' | xargs)
./terraform plan -var-file='tf/var-values.tfvars' tf