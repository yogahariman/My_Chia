#! /bin/sh
# chia
source ~/chia-blockchain/venv/bin/activate; chia start farmer;deactivate;
#sleep 600
# flax
source ~/flax-blockchain/venv/bin/activate; flax start farmer; deactivate;
#sleep 600
# flax
source ~/silicoin-blockchain/venv/bin/activate; silicoin start farmer; deactivate;
#sleep 600


#source /home/rfi212/chia-blockchain/venv/bin/activate
#chia show -a node.chia.net:8444
#deactivate

source ~/flax-blockchain/venv/bin/activate
flax show -a node-1.flaxnetwork.org:6888
flax show -a node-2.flaxnetwork.org:6888
flax show -a node-3.flaxnetwork.org:6888
deactivate
