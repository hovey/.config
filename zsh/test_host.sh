#!/bin/zsh

# case $HOSTNAME in
# case "atlas.lan" in
case $HOST in
  (foo) echo "Woohoo, we're on foo!";;
  (atlas.lan) echo "The host is atlas.";;
  (bar) echo "Oops, bar? Are you kidding?";;
  (*)   echo "How did I get in the middle of nowhere?";;
esac
