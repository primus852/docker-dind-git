# docker-dind-git
Make `git` and `npm` available in a Docker-In-Docker Image for ci/cd pipeline

## Usage (gitlab-ci.yml to copy build to live server)
```
publish:
    image: primus852/docker-dind-git
    script:
        - npm run build portal -- --output-path=apps/portal/dist --configuration=production --output-hashing=all --source-map=false
        - commit=`git show -s --format=%h $CI_COMMIT_SHA`
        - docker build -t fe-portal:$commit apps/portal
```
