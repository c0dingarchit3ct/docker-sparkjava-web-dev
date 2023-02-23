# first build the changed code
# shell endless while loop
# https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script
 while true 
 do
    echo "building background dev"
        # ./gradlew buildAndReload --continuous -PskipDownload=true -x Test
    ./gradlew buildAndReload --continuous  -PskipDownload=true -x Test
    echo  " exiting"
done
