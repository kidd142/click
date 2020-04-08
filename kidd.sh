#!/bin/sh

  echo -n "\033[1;32m Ketik Y (Y/T) : \033[1;0m"
  read pil;
  if [ $pil = 'y' ] || [ $pil = 'Y' ];
  then
      clear
      echo "\033[1;32mInstalling Jandes\033[1;0m"
      sleep 2
      sudo apt-get  update -y
      sudo apt-get  upgrade -y
      sudo apt-get install php -y
      sudo dpkg --configure -a -y
      sudo apt-get  install nano
      sudo apt-get --fix-broken install -y
      sudo apt-get  install git
      sudo apt-get  install python
      echo "\033[1;32m Cloning SC LTC CLICK\033[1;0m"
      sleep 2
      git clone https://github.com/kanxck/ltckanx.git
      cd ltckanx
      unzip ltc.zip 
      cd
      echo "\033[1;32mInstall Success Gaes\033[1;0m"
      sleep 2
      exit
  elif [ $pil = 't' ] || [ $pil = 'T' ];
  then
     clear
     echo "\033[1;31mExit.......!\033[1;0m"
     sleep 2
     exit
  else
     clear
     echo "\033[1;36mERROR : Please ngisenx maneh...!\033[1;0m"
     sleep 1
     echo $ulang
     clear
  fi
done
