#sudo visudo; rfi212 ALL=(ALL) NOPASSWD: /bin/mount
st=true
while $st
do
	for i in {1..4}
	do
		if [[ $i -lt 10 ]]; then drive="/Drive/00$i/Plots/"; fi
		if [[ $i -gt 9 ]]; then drive="/Drive/0$i/Plots/"; fi
		#[[ ! -d $drive ]]&echo "Directory $drive DOES NOT exists."
		if [[ ! -d $drive ]]; then
			time_now=$(date '+%Y/%m/%d %H:%M:%S')
			mount -a
			echo "Directory $drive DOES NOT exists."
			echo "$time_now Directory $drive DOES NOT exists." >> /home/rfi212/mount.log
		fi
	done
	#st=false
	sleep 300
done
