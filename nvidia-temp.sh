#!/bin/bash

nvidia-settings --assign CurrentMetaMode="DP-2: nvidia-auto-select +1920+0 {
ForceFullCompositionPipeline = On },HDMI-0: nvidia-auto-select +4480+0 { ForceFullCompositionPipeline = On },DP-5: nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
