# Log GPU usage in background
nvidia-smi --query-gpu=timestamp,index,utilization.gpu,memory.used,memory.total,power.draw --format=csv -l 1 > gpu_usage.csv &
NVIDIA_SMI_PID=$!

WORKDIR='scenic/projects/boundary_attention/workdir/'
DATASET_DIR='scenic/projects/boundary_attention/kaleidoshapes_dataset'
CHECKPOINT_PATH=''
CHECKPOINT_STEP=-1
MODEL_WEIGHTS_PATH=''

python -m scenic.projects.boundary_attention.main \
  --config=scenic/projects/boundary_attention/configs/base_config.py \
  --workdir=${WORKDIR} \
  --dataset_dir=${DATASET_DIR} \
  --checkpoint_path=${CHECKPOINT_PATH} \
  --checkpoint_step=${CHECKPOINT_STEP} \
  --weights_path=${MODEL_WEIGHTS_PATH}