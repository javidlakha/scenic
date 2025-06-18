#!/bin/bash

# Load modules
module load gcc/12.2.0-fasrc01
module load python/3.10.12-fasrc01
module load cuda/12.4.1-fasrc01

# Create conda environment
conda create -n boundary_attention python=3.10 -y
conda activate boundary_attention

# Install packages
pip install -e .
pip install -r scenic/projects/boundary_attention/requirements.txt
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html --force-reinstall

# Create directories for saving results
mkdir -p scenic/projects/boundary_attention/workdir
mkdir -p scenic/projects/boundary_attention/pretrained_weights 