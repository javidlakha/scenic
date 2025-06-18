# Install gsutil
#curl https://sdk.cloud.google.com | bash
#exec -l $SHELL
#gcloud init

mkdir -p scenic/projects/boundary_attention/kaleidoshapes_dataset
gsutil cp -r gs://scenic-bucket/boundary_attention/kaleidoshapes/ scenic/projects/boundary_attention/kaleidoshapes_dataset
