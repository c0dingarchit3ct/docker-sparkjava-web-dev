echo ' ------- exit serever if running'
 curl http://localhost:4567/exit
# sleep 5
echo  '------  run server again '
# ./gradlew run -PskipDownload=true