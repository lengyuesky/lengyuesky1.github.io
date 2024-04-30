#!/bin/bash

# 循环无限次运行程序
while true; do
    # 运行程序，并通过tee命令同时输出到屏幕和传递给一个子shell
    ./node | tee /dev/tty | grep -q "ERROR" &
    pid=$!  # 获取grep进程的PID

    # 等待grep进程结束
    wait $pid
    exit_status=$?

    # 检查grep的退出状态
    if [ $exit_status -eq 0 ]; then
        echo "检测到 'ERROR'，即将停止并重启程序..."
        # 杀死node程序
        kill $pid_node
        wait $pid_node  # 等待node程序结束
        sleep 1s  # 发现错误后，暂停1秒钟再重启
    else
        echo "程序正常结束，未检测到 'ERROR'。"
        break  # 如果程序结束且未检测到 'ERROR'，退出循环
    fi
done
