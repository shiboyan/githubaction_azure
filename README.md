# azure_terraform

# Introduction 
This repo is for create a nsg in azure
# Getting Started
This Repo is usig github action to run CI/CD pipeline build terraform infra When create a Pull request ,automatically run the cicd pipeline to Multiple env.
The github repo should have the following branches

Includes: dev, release

The dev branch is deployed to the dev environment, and the release branch is deployed to nonprod.
Create tags when deploying to production

![img.png](img.png)
Then CICD pipeline include steps as "login azure","terraform init","terraform plan","terraform apply" as below etc

