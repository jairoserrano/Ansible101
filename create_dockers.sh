#!/bin/bash
for i in `seq 1 $1`;
do
  docker run -d -P --name server0$i -p 222$i:22 $2
done
