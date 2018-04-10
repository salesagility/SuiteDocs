# Configure your environment here
export DATABASE_DRIVER=MYSQL
export DATABASE_NAME=automated_tests
export DATABASE_HOST=localhost
export DATABASE_USER=automated_tests
export DATABASE_PASSWORD=automated_tests
export INSTANCE_URL=http://localhost/
export INSTANCE_ADMIN_USER=admin
export INSTANCE_ADMIN_PASSWORD=admin
export INSTANCE_CLIENT_ID=suitecrm_client
export INSTANCE_CLIENT_SECRET=secret

# Saves it perminal
echo "
export DATABASE_DRIVER=$DATABASE_DRIVER;
export DATABASE_NAME=$DATABASE_NAME;
export DATABASE_HOST=$DATABASE_HOST;
export DATABASE_USER=$DATABASE_USER;
export DATABASE_PASSWORD=$DATABASE_PASSWORD;
export INSTANCE_URL=$INSTANCE_URL;
export INSTANCE_ADMIN_USER=$INSTANCE_ADMIN_USER;
export INSTANCE_ADMIN_PASSWORD=$INSTANCE_ADMIN_PASSWORD;
export INSTANCE_CLIENT_ID=$INSTANCE_CLIENT_ID;
export INSTANCE_CLIENT_SECRET=$INSTANCE_CLIENT_SECRET;
" > $HOME/.codecept.sh;

if [ -f $HOME/.bash_aliases ]
then echo "found aliases";
else touch $HOME/.bash_aliasesa;
fi;

if grep -q "source $HOME/.codecept.sh" ~/.bash_aliases;
then
        echo "Composer bin already configured";
else
        echo "source $HOME/.codecept.sh" >> ~/.bash_aliases;
fi

bash
