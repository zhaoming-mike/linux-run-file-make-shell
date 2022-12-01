FN=hi
g++ -c $FN.cpp  
g++ -o $FN $FN.o 
tar -zcvf $FN.tar.gz $FN # file dir/ ...
cat install.sh $FN.tar.gz > $FN.run
chmod +x $FN.run
rm -rf $FN
rm -rf $FN.o
rm -rf $FN.tar.gz
