#! /bin/sh
# chia
#source ~/chia-blockchain/activate
source /home/rfi212/chia-blockchain/venv/bin/activate; chia start farmer;deactivate;
#sleep 300
#chia show -a node.chia.net:8444
#deactivate
# flax
#source ~/flax-blockchain/activate
#flax start farmer
#sleep 300
#flax show -a node-1.flaxnetwork.org:6888
#flax show -a node-2.flaxnetwork.org:6888
#flax show -a node-3.flaxnetwork.org:6888
#deactivate

#sudo visudo; rfi212 ALL=(ALL) NOPASSWD: /bin/mount
st=true
while $st
do
	for i in {1..3}
	do
		if [[ $i -lt 10 ]]; then drive="/Drive/00$i"; fi
		if [[ $i -gt 9 ]]; then drive="/Drive/0$i"; fi
		time_now=$(date '+%Y/%m/%d %H:%M:%S')
		[ ! -d $drive ] && mount -a && echo "$time_now Directory $drive DOES NOT exists." >> /home/rfi212/Documents/mount.log
		#[ ! -d $drive ] && echo "Directory $drive DOES NOT exists."
		#if [[ -d $drive ]]; then
		#	echo "$drive exists."
		#fi
	done
	#st=false
	sleep 300
done
