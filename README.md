Docker image to deploy to heroku via gitlab CI/CD 
===========================================

Packed and ready image used to deploy to heroku via gitlab:

- dpl: to deploy to heroku
- git
- curl


Sample .gitlab-ci.yml
---------------------

```yaml
image: node:10.16

cache:
  paths:
    - node_modules/

stages:
  - deploy_heroku

deploy_unstable:
  image: mdnmdn/heroku-dpl-deploy:latest
  only:
    - unstable
  stage: deploy_heroku
  script:
    - dpl --provider=heroku --app=$HEROKU_APP_NAME --api-key=$HEROKU_API_KEY

```