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
        echo "The memory usage on ${Server_name} is:  "
        free -h
        echo ""

}

function cpu_check(){
    echo ""
        echo "The CPU load on ${Server_name} is: "
    echo ""
        uptime
    echo ""
}

function tcp_check(){
    echo ""
        echo "The TCP connection on ${Server_name} is: "
    echo ""
        cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check(){
    echo ""
        echo "The kernel version on  ${Server_name} is: "
        echo ""
        uname -r
    echo ""
}

function all_checks(){
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

##
# Color variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color function
##

ColorGreen(){
    echo -ne $green$1$clear
}

ColorBlue(){
    echo -ne $blue$1$clear
}

menu(){
echo -ne "
    
My first Menu

$(ColorGreen '1)') Memory Usage
$(ColorGreen '2)') CPU Load
$(ColorGreen '3)') Number of TCP Connections
$(ColorGreen '4)') Kernel version
$(ColorGreen '5)') All check
$(ColorGreen '0)') Exit

$(ColorBlue 'Choose an option : ') "
        read a 
        case $a in
                1) memory_check; menu;;
                2) cpu_check; menu;;
                3) tcp_check; menu;;
                4) kernel_check; menu;;
                5) all_checks; menu;;
                0) exit 0;;
                *) echo -e $red "Wrong Option. "$clear;
WrongCommand;;
        esac
}
# call the menu function
menu