SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

export PYTHONPATH=$PYTHONPATH:$SCRIPTPATH/..
echo $PYTHONPATH

# DB Configuration
export INFRABOX_DATABASE_DB=postgres
export INFRABOX_DATABASE_PORT=5439
export INFRABOX_DATABASE_HOST=localhost
export INFRABOX_DATABASE_USER=postgres
export INFRABOX_DATABASE_PASSWORD=postgres

# Service Config
export INFRABOX_VERSION=local
export INFRABOX_SERVICE=api
export INFRABOX_LOG_LEVEL=debug
export INFRABOX_ROOT_URL=http://localhost:8080
export INFRABOX_JOB_MAX_OUTPUT_SIZE=99999999999
export INFRABOX_JOB_SECURITY_CONTEXT_CAPABILITIES_ENABLED=false
export INFRABOX_CLUSTER_NAME=master

# S3 Config
export INFRABOX_STORAGE_GCS_ENABLED=false
export INFRABOX_STORAGE_S3_ENABLED=true
export INFRABOX_STORAGE_S3_SECURE=false
export INFRABOX_STORAGE_S3_REGION=us-east-1
export INFRABOX_STORAGE_S3_ENDPOINT=http://minio
export INFRABOX_STORAGE_S3_PORT=9000
export INFRABOX_STORAGE_S3_BUCKET=infrabox
export INFRABOX_STORAGE_S3_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE
export INFRABOX_STORAGE_S3_SECRET_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

# Account
export INFRABOX_ACCOUNT_SIGNUP_ENABLED=true
export INFRABOX_ACCOUNT_LDAP_ENABLED=false

# Github
export INFRABOX_GITHUB_ENABLED=false
export INFRABOX_GITHUB_LOGIN_ENABLED=false

# Gerrit
export INFRABOX_GERRIT_ENABLED=false

# RSA
export INFRABOX_RSA_PRIVATE_KEY_PATH=../../infrabox/test/utils/id_rsa
export INFRABOX_RSA_PUBLIC_KEY_PATH=../../infrabox/test/utils/id_rsa.pub


python server.py