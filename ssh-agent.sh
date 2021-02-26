#!/bin/sh
#
# Usage: . ./ssh-agent.sh

ssh-agent -s > $HOME/myagent.sh
. $HOME/myagent.sh
ssh-add
