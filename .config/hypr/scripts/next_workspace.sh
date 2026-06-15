#! /usr/bin/env bash

curr_workspace=$(hyprctl -j activeworkspace | jq '.id')

next_workspace=$((curr_workspace + 1))

hyprctl dispatch workspace "${next_workspace}"
