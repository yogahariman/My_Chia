#! /bin/sh

disk="/Drive/C/disk/"
ram="/Drive/C/ram/"
dest="/Drive/Z/Plots/"
contract="xch1rtc906ytccjmq6ldzcdl3e04epn6n83z46rdtaxpyde7vcmquqsslas23z"
farmerkey="843443ad3726bb0c7486566b480c6430813bd89d4efba7d956187251713b55fc6dde5fb16190bd191aacc5e613264cdf"

plotting="/home/rfi212/chia-plotter/build/chia_plot -n 1 -r 6 -u 32 -v 32 -t $disk -2 $ram -d $dest -c $contract -f $farmerkey"
triming="sudo fstrim -v /Drive/C"

rm /Drive/C/ram/*
rm /Drive/C/disk/*


for ((i = 0 ; i <= 15 ; i++)); do
	if [[ -d $dest && -w $dest ]]; then
		#echo "$dest"
		eval $triming
		eval $plotting
		sleep 300
	fi
done
echo "Gagal Bos....."
sleep 300
sudo poweroff

