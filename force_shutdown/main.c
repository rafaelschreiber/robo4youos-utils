/*
 * Author:	Rafael Schreiber
 * Date:	05-11-2018
 * Desc:	Immediately hard reboots the device due some issues at ECER18 -.-
 */

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	if(argc < 2){
		system("echo b > /proc/sysrq-trigger");
	} else if(argc == 2){
		sleep(atoi(argv[1]));
		system("echo b > /proc/sysrq-trigger");
	} else {
		printf("Too many arguments supplied.\n");
		return 1;
	}
}
