export NODE_ENV=production

echo express >> results.txt ;
node expressserver.js & sleep 5 ; 
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f expressserver ;
sleep 5 

echo hapi >> results.txt ;
node hapiserver.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f hapiserver ;
sleep 5 

echo aero >> results.txt ;
node aero.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:4000/ | grep "Requests per second:" >> results.txt ;
pkill -f aero ;
sleep 5 


echo fastify >> results.txt ;
node fastify.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f fastify ;
sleep 5 


echo micro >> results.txt ;
node micro.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f micro ;
sleep 5


echo koa >> results.txt ;
node koa.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f koa ;
sleep 5 

echo node >> results.txt ;
node rawnodeserver.js & sleep 5 ; 
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f rawnodeserver ;
sleep 5 

echo restify >> results.txt ;
node restifyserver.js & sleep 5 ; 
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f restifyserver ;
sleep 5 


echo total.js >> results.txt ;
node totalserver/total.js & sleep 5 ; 
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f total ;
sleep 5 ;

echo sails.js >> results.txt ;
cd test-project ;
sails lift & sleep 5 ;
cd ..; 
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:1337/ | grep "Requests per second:" >> results.txt ;
pkill -f sails ;
sleep 5 
