export $(cat .env | grep -i '^[a-z]' | xargs)
./terraform init tf