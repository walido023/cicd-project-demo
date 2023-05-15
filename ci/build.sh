# Build and publish docker image
GIT_TAG=:${GITHUB_REF#refs/tags/}
DOCKER_TAG=${GIT_TAG#:refs/heads/main}
#./mvnw -ntp jib:build -Djib.to.image=${{ fromJson(steps.config.outputs.config).image_name }}${DOCKER_TAG}  -Pprod
./mvnw -ntp jib:build -Djib.to.image=europe-west9-docker.pkg.dev/s4a-cicd-poc-sbx-5b20/demo-repo/cicd-demo:latest  -Pprod
