#! /bin/sh
# https://github.com/madMAx43v3r/chia-plotter

sleep 300

# Get the system time
declare -i hour_now=$(date +"%H")
declare -i hour_stop=17
disk="/Drive/C/disk/"
ram="/Drive/C/ram/"
dest="/Drive/X/Plots/"
contract="xch1rtc906ytccjmq6ldzcdl3e04epn6n83z46rdtaxpyde7vcmquqsslas23z"
farmerkey="843443ad3726bb0c7486566b480c6430813bd89d4efba7d956187251713b55fc6dde5fb16190bd191aacc5e613264cdf"

plotting="./home/rfi212/chia-plotter/build/chia_plot -n 1 -r 6 -u 32 -v 32 -t $disk -2 $ram -d $dest -c $contract -f $farmerkey"
#plotting2="./home/rfi212/chia-plotter/build/chia_plot -n 1 -r 6 -u 32 -v 32 -t $disk -2 $ram -d /Drive/Z/Plots/ -c $contract -f $farmerkey"
triming="sudo fstrim -v /Drive/C"

rm /Drive/C/ram/*
rm /Drive/C/disk/*

if [[ -d $dest && -w $dest ]]; then
	#echo "$dest"
	eval $triming
	eval $plotting
	sleep 60
	eval $triming
	eval $plotting
	if [[ "$hour_now" -gt "$hour_stop" ]]; then
		#echo "$hour_now"
		sleep 60
		eval $triming
		eval $plotting
		declare -i date_now=$(date +"%u")
		declare -i date_friday=5
		if [[ "$date_now" -gt "$date_friday" ]]; then
			sleep 60
			eval $triming
			eval $plotting		
		fi
	fi
fi
sleep 60
sudo poweroff

