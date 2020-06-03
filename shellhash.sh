#!/bin//bash

#======|info|=========================================================#
# version: 0.1                                                        #
#=====================================================================#
# coder: GR3YWH1TE                                                    #
#=====================================================================#
# OS: Kali-Linux                                                      #
#======|about|========================================================#
# Simple tool for brute force, the idea is to work only with numbers  #
# starting from the number "0" and work until you find the hash value #
# you will not be able to choose the size or weight of the attempts   #
# the idea is to try all possible combinations, to make sure that the #
# software has tried all possible numerical possibilities..           #
#=====================================================================#

CRYPTOGRAPHY()
{
#properties
attempt="0"
clear

#menu
echo 
echo "    _____ __         ____        "
echo "   / ___// /_  ___  / / /        "
echo "   \__ \/ __ \/ _ \/ / /         "
echo "  ___/ / / / /  __/ / /          "
echo " /____/_/ /_//__//_/_/       __  "
echo "          / / / /___ ______/ /_ "
echo "         / /_/ / __  / ___/ __ \ "
echo "        / __  / /_/ (__  ) / / / "
echo "       /_/ /_/\__,_/____/_/ /_/ "
echo 
echo " [1] sha1      |      [2] md5 "
echo 
echo "| choice method |"
read cryptography

    if [[ "$cryptography" = "1" ]];then
    cryptography="sha1sum"
    elif [[ "$cryptography" = "2" ]];then
    cryptography="md5sum"
    else
    clear
    echo "invalid option"
    sleep 2
    CRYPTOGRAPHY ""
    fi
    }
    CRYPTOGRAPHY
    
clear
echo
echo "    __  __           __   "
echo "   / / / /___ ______/ /_  "
echo "  / /_/ / __  / ___/ __ \ "
echo " / __  / /_/ (__  ) / / / "
echo "/_/ /_/\__ _/____/_/ /_/  "
echo
echo "| enter the hash value |"
read hash
hash=$( echo ""$hash"  -" )
clear

#decryptor
SHA1()
{

((attempt+=1))
password=$( $cryptography <<<"$attempt" )
  
  if [[ "$hash" = "$password" ]];then
  clear
  echo " | hash decrypted | "$attempt" | hash | "$password" | "

 else

SHA1 ""

fi
}
SHA1