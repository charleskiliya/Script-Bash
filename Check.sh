#!/bin/bash

##
# Bash Menu Script that Checks:
#   - Memory Usage
#   - CPU Load
#   - Number of TCP Connexion
#   - Kernel version 
##

Server_name=$(hostname)

function memory_check(){
    echo ""
        echo "The memory usage on ${server_name} is:  "
        free -h
        echo ""

}

function cpu_check(){
    echo ""
        echo "The CPU load on ${server_name} is: "
    echo ""
        uptime
    echo ""
}

function tcp_check(){
    echo ""
        echo "The TCP connection on ${server_name} is: "
    echo ""
        cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check(){
    echo ""
        echo "The kernel version on  ${server_name} is: "
        echo ""
        uname -r
    echo ""
}

function all_check(){
    memory_check
    cpu_check
    tcp_check
    kernel_check
}