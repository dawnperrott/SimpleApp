sudo apt && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop simple_app
cd SimpleApp/
npm install
echo $PRIVATE_KEY > simpleappkey.pem
echo $SERVER > server.crt
pm2 start ./bin/www --name simple_app
