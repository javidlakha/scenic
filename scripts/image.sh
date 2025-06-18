PRETRAINED_PATH='scenic/projects/boundary_attention/pretrained_weights/'
IMAGE_PATH='scenic/projects/boundary_attention/noisy_flower.png'
SAVE_PATH='scenic/projects/boundary_attention/workdir/'

python scenic/projects/boundary_attention/helpers/test_new_images.py \
  --weights_dir=${PRETRAINED_PATH} \
  --img_path=${IMAGE_PATH} \
  --save_path=${SAVE_PATH} \
  --height=216 \
  --width=216 \
  --save_raw_output=False