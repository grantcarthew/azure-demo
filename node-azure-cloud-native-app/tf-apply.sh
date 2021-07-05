export $(cat .env | grep -i '^[a-z]' | xargs)
./terraform apply -var-file='tf/var-values.tfvars' tf