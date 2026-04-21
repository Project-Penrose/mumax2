#! /bin/bash
# Copyright (c) Magnon Compute Corporation. All rights reserved.
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../libmumax2:/usr/local/cuda/lib64:/usr/lib64/nvidia
../../bin/apigen $@
