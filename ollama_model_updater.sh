#!/bin/bash
for model in $(ollama list | grep -Po '^(?!NAME)\S+')
do 
  ollama pull $model
done
