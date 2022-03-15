#!/bin/bash
#Description : docker installation in ubuntu 18

#Date : 03/15/2022
#Author : kaneza


echo -e "\n docker installation on ubuntu in process please be patient \n"

sleep 2

USER=root

if
	[ $USER != root ]

	then
	echo -e "\n please you need to be a root user to run the installation.\n"
	exit 1
fi
                                                                                                                                               
 sleep 2
																		                        echo -e "\n uninstall old versions \n"
																		                        sudo apt-get remove docker docker-engine docker.io containerd runc
																				    sleep 2

																				
																				    echo -e "\n let's set up the repository \n"

																				
																				    sleep 2
																		                     sudo apt-get update

   sleep 2

																				
   sudo apt-get install ca-certificates curl gnupg lsb-release																																
   sleep 2
																																								
   echo -e "\n add Docker's official GPG key \n"
																				
   sleep 2																																						               curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
																																						                        sleep 2
																																									echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
																																									sleep 2
																																									echo -e "\n install docker engine \n"

																																						                        sleep 2
																			
																																									sudo apt-get update
																																																										                        sudo apt-get install docker-ce docker-ce-cli containerd.io
																																																										                        sudo docker run hello-world
																																						                        sleep 2																																																																														                        echo -e  "\n docker successfully install.thank you \n"
