#!/bin/bash

echo "installation starts"

kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.43.1/release.yaml

kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/release-full.yaml

kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml

kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml

rpm -Uvh https://github.com/tektoncd/cli/releases/download/v0.29.0/tektoncd-cli-0.29.0_Linux-64bit.rpm

kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/git-clone/0.7/raw

kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/buildah/0.5/raw

kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/kubernetes-actions/0.2/raw
