#!/bin/bash

while true; do
    # 使用timeout命令运行程序，设置时间为5分钟
    timeout 13m ./node

    # 程序运行时间结束后，这里可以加入任何你需要执行的清理工作
    echo "程序已运行5分钟，正在重启..."

    # 如果需要，在重启之前暂停
    sleep 1s

    # 重启程序
    echo "正在重启程序..."
done

