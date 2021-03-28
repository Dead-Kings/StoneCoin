#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.stonecore/stoned.pid file instead
stone_pid=$(<~/.stonecore/testnet3/stoned.pid)
sudo gdb -batch -ex "source debug.gdb" stoned ${stone_pid}
