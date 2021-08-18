#!/bin/bash

###
# config
###
# get project name from input
project_name=${PWD}/app
app_name=api


###
# check enviroments
###
echo "Checking your enviroments..."
os=$(uname)
curl=$(which curl)
composer=$(which composer)
unzip=$(which unzip)
git=$(which git)

if [[ ! -e $curl ]] ; then
    echo "Curl is not found, please install curl first"
    break
elif [[ ! -e $unzip ]] ; then
    echo "Unzip is not found, please install unzip first"
    break
elif [[ ! -e $composer ]] ; then
    echo "Composer is not found, please install composer first"
    echo "More information could be found at http://getcomposer.org/"
    break
elif [[ ! -e $git ]] ; then
	echo "Git is not found, please install git first"
    break
else
	echo "Great! your enviroments is checked, start to donwload laravel..."
fi


cd ${project_name}

${git} clone https://github.com/aligurbuz/laravel-api.git ${app_name}

cd ${project_name}/${app_name}
${composer} install
chmod -R 777 storage
mv .env.example .env
php artisan key:generate
php artisan migrate
php artisan passport:install
