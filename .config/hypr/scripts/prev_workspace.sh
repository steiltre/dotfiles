#! /usr/bin/env bash

curr_workspace=$(hyprctl -j activeworkspace | jq '.id')

prev_workspace=$((curr_workspace - 1))

hyprctl dispatch workspace "${prev_workspace}"
