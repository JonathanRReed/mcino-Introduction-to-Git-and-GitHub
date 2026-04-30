#!/usr/bin/env bash

read -r -p "Enter the principal: " principal
read -r -p "Enter the rate of interest: " rate
read -r -p "Enter the time period: " time_period

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time_period" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $simple_interest"
