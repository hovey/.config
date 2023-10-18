#!/bin/zsh

echo "This is ~/.config/zsh/cb-zshrc.sh"


echo "Setting SNL proxy for Build SIERRA on macOS"
export http_proxy=http://wwwproxy.sandia.gov:80
export ftp_proxy=http://wwwproxy.sandia.gov:80
export https_proxy=http://wwwproxy.sandia.gov:80
export no_proxy=localhost,localnets,.sandia.gov,127.0.0.1,169.254.0.0/16,forge.sandia.gov

