#!/bin/bash

## 批量更新指定目录下的所有项目


# 指定要遍历的父目录路径
parent_directory="/root/project"

# 获取父目录下的所有一级子目录
subdirectories=$(find "$parent_directory" -mindepth 1 -maxdepth 1 -type d)

# 遍历每个子目录并执行 git pull
for directory in $subdirectories; do
    cd "$directory" || continue  # 进入子目录，若失败则跳过该目录
    echo "Pulling changes in $directory"
    git pull
    echo "Done pulling changes in $directory"
    echo
done