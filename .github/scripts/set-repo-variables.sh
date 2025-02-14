#!/bin/bash
set -e

gh variable set TF_VAR_CERT_MANAGER_LETS_ENCRYPT_ISSUER_ACME_EMAIL -b "$TF_VAR_cert_manager_lets_encrypt_issuer_acme_email"
gh variable set TF_VAR_STREAMX_OPERATOR_IMAGE_PULL_SECRET_REGISTRY_EMAIL -b "$TF_VAR_streamx_operator_image_pull_secret_registry_email"
gh variable set TF_VAR_RESOURCE_GROUP_NAME -b "$TF_VAR_resource_group_name"
gh variable set TF_VAR_LOCATION -b "$TF_VAR_location"

if [[ -n "$TF_VAR_USER_IDENTITY_ID" ]]; then
gh variable set TF_VAR_USER_IDENTITY_ID -b "$TF_VAR_user_identity_id"
fi
if [[ -n "$TF_VAR_PUBLIC_IP_ADDRESS" ]]; then
gh variable set TF_VAR_PUBLIC_IP_ADDRESS -b "$TF_VAR_public_ip_address"
fi
if [[ -n "$TF_VAR_PUBLIC_IP_ID" ]]; then
gh variable set TF_VAR_PUBLIC_IP_ID -b "$TF_VAR_public_ip_id"
fi
if [[ -n "$INGESTION_HOST" ]]; then
    gh variable set INGESTION_HOST -b "$INGESTION_HOST"
fi
if [[ -n "$WEB_HOST" ]]; then
    gh variable set WEB_HOST -b "$WEB_HOST"
fi
