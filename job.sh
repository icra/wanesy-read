#proces que refresca les dades cada 10 min

#wmc wanesy password
password=$1

while :;
  do bash 2-crea-dades-js.sh $password;
  sleep 600;
done
