#!/usr/bin/env bash

set -x

python3 -u main.py \
    --dataset_file YoutubeVIS \
    --epochs 12 \
    --lr 2e-4 \
    --lr_drop 2 10\
    --batch_size 2 \
    --num_workers 1 \
    --coco_path ../coco \
    --ytvis_path /data/ningyuanxiang/datasets/ytvis_2019/ \
    --num_queries 300 \
    --num_frames 3 \
    --with_box_refine \
    --masks \
    --rel_coord \
    --backbone resnet50 \
    --output_dir r50_ablation \
#    --pretrain_weights weights/r50_weight.pth \
#    --pretrain_weights  \


