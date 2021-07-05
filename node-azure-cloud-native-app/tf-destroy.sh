export $(cat .env | grep -i '^[a-z]' | xargs)
./terraform destroy -var-file='tf/var-values.tfvars' tf