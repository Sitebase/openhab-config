RESULT=$(curl -s 'http://192.168.1.119:8008/' -H 'Authorization: cG9wY29ybjpwb3Bjb3Ju' --data '{"id":30,"method":"getplaying","jsonrpc":"2.0","params":[]}')

if [[ $RESULT == *'"playing":true'* ]]
then
    #echo 0;
    VALUE="ON"
else
    #echo -1;
    VALUE="OFF"
fi

curl --header "Content-Type: text/plain" --request PUT --data $VALUE http://server.lan:8080/rest/items/Popcorn_Living_Movie/state
