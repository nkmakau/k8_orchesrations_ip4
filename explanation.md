#### Orchestration on Google Cloud
## Create a free tier Google Cloud account

Create a free tier account by visiting [**Free Google Cloud**](https://cloud.google.com/free), 20 free products and USD300 free credit is issued upon subscription. You must provide a valid debit card and a one time charge (USD1) will run for confirmation.

## gcloud
gcloud is a command-line tool for managing resources on Google Cloud Platform and is provided as part of Google Cloud SDK. To install, follow the instructions [**here**](https://cloud.google.com/sdk/docs/install) to set up on Debian/Ubuntu.

## Initialize and authenticate gcloud
You can now authenticate gcloud with your Google account on your terminal by running the initialiation command. 
gcloud init
To check your current configurations, run the configuration list command
gcloud config list
Set the project property in the core section, run
glcoud config set project myProjectID
Set the zone property in the compute section, run
gcloud config set compute/zone asia-east1-b
Confirm the changes again
gcloud config list

## kubectl
Install the kubectl command on your local computer by running
gcloud components install kubectl
Verify the version by running
kubectl version
## Install additional components
Install a few required components 
gcloud components install kind

## Create a project on gcloud

## Create a cluster
You can create a cluster using the terminal by running the command
gcloud container clusters create yolo-cluster
The cluster may take some time to complete. Once it's done, again set it as the default cluster
gcloud config set container/cluster yolo-cluster

Also check the project dashboard to reflect the recently created cluster
# Clone the repository
git clone
cd yolo
## Setup a project on gcloud

## Login to gcloud from your terminal
While still in the yolo folder run the below command:
gcloud container clusters get-credentials yolomy-cluster --zone europe-west4-a --project yolomy

## Create a namespace, deploy
kubectl create namespace yolomy
kubectl create -f client-deploy.yml


## Successful running of the containers
kubectl get all -n yolomy

# Images used in the gcloud container registry

- docker.io/noshmak/yolo-client:1.0
- docker.io/noshmak/yolo-backend:1.0
- docker.io/noshmak/mongoauth:1.0

## Live URL:
[Yolomy Site] (http://34.90.44.211:3000/)

## Resources and articles used
A tutorial by John Kariuki hosted on [**Scotch.io**](https://scotch.io/tutorials/google-cloud-platform-i-deploy-a-docker-app-to-google-container-engine-with-kubernetes)