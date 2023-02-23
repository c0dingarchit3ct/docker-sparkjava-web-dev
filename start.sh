

# echo 'starting background dev'
# ./background-dev.sh
(sleep 5;  ./gradlew buildAndReload --continuous  -PskipDownload=true -x Test) & 
while true; do
    echo "starting server"
    ./gradlew run -PskipDownload=true -x Test
done

# ./background-dev.sh