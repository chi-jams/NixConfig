#!/bin/bash

nvidia-settings --assign CurrentMetaMode="DP-2: nvidia-auto-select +1920+1440 {
ForceFullCompositionPipeline = On },HDMI-0: nvidia-auto-select +4480+1440 {
ForceFullCompositionPipeline = On },DP-5: nvidia-auto-select +0+1440 { ForceFullCompositionPipeline = On }"
