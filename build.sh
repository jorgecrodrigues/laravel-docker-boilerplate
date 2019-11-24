: '
Este arquivo é utilizado pelo serviço do composer para verificar se a aplicação existe, se não existir
cria uma nova aplicação Laravel, se existir apenas atualiza os pacotes ...
'

if [ -f composer.json ]; then
  composer update
else
  composer create-project --prefer-dist laravel/laravel blog
  cd blog && mv * .[A-Za-z0-9]* .. && rm blog -R
fi

chown www-data:www-data . -R
