php的strive扩展

安装过程：
    $php_dir = php安装目录

   1. /$php_dir/bin/phpize
   2. ./configure --with-php-config=$php_dir/bin/with-php-config
   3.  make && make install
   4. vi php.ini  加上
               extension_dir=/$php_dir/lib/php/extensions/no-debug-non/  这里是扩展目录，根据make install 最后生成的目录为准       
               extension=strive.so

  5. php -m |grep strive 




实例：
   1.加法运算
         echo addition(10,40);



  
