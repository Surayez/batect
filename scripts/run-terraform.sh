#!/bin/bash

set -euo pipefail
cd ${TERRAFORM_DIR}
echo "Stage is ${STAGE}"
TERRAFORM_EXTRA_ARGS=${TERRAFORM_EXTRA_ARGS:-}

# Init Terraform
terraform init

# Apply Terraform
terraform ${OPERATION} -var="stage=${STAGE}" -var="service_name=${SERVICE_NAME}" ${TERRAFORM_EXTRA_ARGS} -input=false