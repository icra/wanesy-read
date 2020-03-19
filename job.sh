#proces que refresca les dades cada 10 min

#wmc wanesy password
password=$1

while :;
  do bash get-data.sh $password | tee data.js;
  sleep 600;
done
