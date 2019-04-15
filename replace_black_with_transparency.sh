#!/bin/bash
# In each picture file replace black background with transparency
# use as e.g.: ls /home/user-backup/backup/only_on_this_device/immutable/device@user__probook@fanda/2017-07-23_15-26-02_CEST._probook_.__home__fanda__/d/by_me/2.pictures/other/old/2.before-2016-04-05/3.map-and-sprites/2.edited-by-me.yes/1.photos/1.plants/1/1/* | xargs bash replace_black_with_transparency.sh

function quit {
    while true; do
        read -n1 -r -p "Press Enter key to exit..." key || exit 1;
        if [ $(printf "%s" "$key" | wc -c) = "0" ]; then
            # Enter pressed, do something
            break;
        fi
    done
    exit ${1};
}
function error {
    echo -e "######################\n# Error. #\n# Contact your advisor. #\n# Exiting. #\n######################\n";
    quit 1;
}

i=0 || error;
for path in "$@"
do
    i=$((i+1)) || error;
    basefilenamewithoutextension=$(echo "$path" | sed -r "s/.+\/(.+)\..+/\1/") || error;
    outputfilename="/home/kdokoli/smurfs/keep/by_me/images/place_pictures/photograhps/plants/flowers/orchids/older/black_background_replaced_with_transparency/from.2017-07-23_15-26-02_CEST._probook_.__home__fanda__/${basefilenamewithoutextension}.transparent_background.png" || error;
    echo "$i ..   $path   ->   $outputfilename" || error;
    convert "$path" -transparent black "$outputfilename" || error;
done

echo "######################" || error;
echo "finished succesfully, processed $i input files, made $i output files" || error;

