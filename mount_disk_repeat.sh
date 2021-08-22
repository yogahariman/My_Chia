#sudo visudo; rfi212 ALL=(ALL) NOPASSWD: /bin/mount

#mount --uuid ee3382d4-b696-4fb2-876e-c17c72d1cae6 /Drive/001/
#mount --uuid 5611eb3c-3de6-4108-85c6-f6826bc26e2e /Drive/002/
#mount --uuid 57b6f047-0e0c-488e-96d6-ed2b35641806 /Drive/003/
#mount --uuid a478a0ba-0bd3-4d24-a879-b12aa43d8c50 /Drive/004/

fileLog="/home/rfi212/mount.log"
rm $fileLog

st=true
while $st
do
	for i in {0..5}
	do
		if [[ $i -lt 10 ]]; then drive="/Drive/00$i/Plots/"; fi
		if [[ $i -gt 9 ]]; then drive="/Drive/0$i/Plots/"; fi
		#[[ ! -d $drive ]]&echo "Directory $drive DOES NOT exists."
		if [[ ! -d $drive ]]; then
			time_now=$(date '+%Y/%m/%d %H:%M:%S')
			mount -a
			echo "$drive DOES NOT exists."
			echo "$time_now $drive DOES NOT exists." >> $fileLog
		fi
	done
	#st=false
	sleep 60
done
