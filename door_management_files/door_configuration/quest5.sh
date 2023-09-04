cd door_configuration_files
cd door_configuration
for file in `find . -maxdepth 1 -type f`
do
    sed  -e "s,/home/user/mydocs,/var/lib/mydir," -e "s,/home/user/waves,/var/sounds," -e "/^$/d" $file
done
