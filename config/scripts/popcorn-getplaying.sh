RESULT=$(curl -s 'http://192.168.1.119:8008/' -H 'Authorization: cG9wY29ybjpwb3Bjb3Ju' --data '{"id":30,"method":"getplaying","jsonrpc":"2.0","params":[]}')

if [[ $RESULT == *'"playing":true'* ]]
then
    #echo 0;
    echo "is playing"
else
    #echo -1;
    echo "is stopped"
fi
