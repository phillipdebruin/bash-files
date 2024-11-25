#!/usr/bin/env bash

alias tf="terraform"
alias tfinit='terraform init'
alias tfp="terraform fmt && terraform plan -out=plan.out"
alias tfa='terraform apply "plan.out"'
alias tfpa='terraform fmt && terraform init && terraform plan -out=plan.out && terraform apply "plan.out"'
alias tfd='terraform destroy -auto-approve'
