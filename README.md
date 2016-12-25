php的strive扩展，主要实现一些PHP常用的功能函数与一些常用的算法函数

安装过程：
    $php_dir = php安装目录

   1. /$php_dir/bin/phpize
   2. ./configure --with-php-config=$php_dir/bin/with-php-config
   3.  make && make install
   4. vi php.ini  加上
               extension_dir=/$php_dir/lib/php/extensions/no-debug-non/  这里是扩展目录，根据make install 最后生成的目录为准       
               extension=strive.so

  5.   php -m |grep strive 




实例：
   <?php
  
     echo "10+40=". addition(10,40)."\r\n";

     echo "100-40=". subtraction(100,40)."\r\n";

     echo "10*40=". multiplication(10,40)."\r\n";

     echo "100/40=". division(100,40)."\r\n";



   1.加法运算
        addition(num1,num2);

   2.减法运算         
       subtraction(num1,num2);
   
  3.乘法运算
       multiplication(num1,num2)

  4.除法运算
       division(num1,num2)

  
