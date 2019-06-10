Given scripts were built during the youtube video series & all videos related to this repository can be reffered on https://www.youtube.com/watch?v=rMDzQr1BAvM&list=PLoVvAgF6geYNezoMMrpUsX9mpiSNWRHNX 

Pre-requisities for executing these shell scripts are as follows -

	1. docker community version - for docker installation please refer following video : https://www.youtube.com/watch?v=W9cT82lgwRQ
	2. To install psql on ubuntu use following commands -
		 i. sudo apt-get install wget ca-certificates
		ii. wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
	   iii. sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
		iv. sudo apt-get update
		 v. sudo apt-get install postgresql postgresql-contrib
		vi. sudo su - postgres
	   vii. psql

After setting up docker/psql, Shell scripts can be used as-is

	