while  true; do
        echo "=========больше комманд======"
        echo "=1 - установить комманнды"
        echo "=2 - справка "
        echo "============================"
        read -p "com:" com
        if [ "$com" = "2" ]; then
        echo "данный скрипт добвоялет комманлы \n введите help2 для подробностей( после установки  )"
        fi
        
        if [ "$com" = "1" ]; then
        echo " пошел процесс установки комманд.. не закрывайте вкладку..."
        sleep 1
        cd /home/"$USER"/bin
        echo  "[LOG] > переход в папку /home/$USER/bin выполнен "
        echo  'echo -e  " help2 - этот список \n cls- очистить терминал(аналог винды) \n \n netget - получить ответ/код с сайта \n pyRun - выполнить комманду пайтон-а(не стабильно!)  "' > help2
        echo "[LOG] > созданна комманда "help2" "
        chmod +x help2
        echo "[LOG] > выданно право выполнения комманде help2 "
        echo clear > cls
        echo "[LOG] > созданна комманда "cls" "
        chmod +x cls
        echo "[LOG] > выдано право выполнения комманде "cls" "
        echo 'read -p "Enter URL: " netgetUrl; otvet=$(curl -s "$netgetUrl"); echo "===========\"$netgetUrl\" log or code ==========="; echo "$otvet"; echo "==================================="' > netget
        echo "[LOG] > созданна комманда "netget""
        chmod +x netget
        echo "[LOG] > выдано право выполнения комманде "netget""
        echo  'read -p "command: " cmd; python3 -c "$cmd"' >pyRun
        echo "[LOG] > созданна коммана "pyRun"  " 
        chmod +x pyRun
        echo "[LOG] > выдано право выполнения комманде "pyRun""
        echo " готово , доп коммады были добавлены в систему "
        exit 0
        fi
done
