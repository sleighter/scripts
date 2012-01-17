#Get all of the RoR dependencies
apt-get install git-core curl zlib1g-dev libsqlite3-dev mysql-server build-essential libssl-dev libreadline-gplv2-dev checkinstall apache2 imagemagick libmysqlclient-dev libpq-dev

#Get the latest rvm
bash < ( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

#Add RVM to the shell as a function just in case you're not using the version controlled dot-files
if [ "$HOME/.bashrc" ]; then
	echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.' >> ~/.bashrc
	source ~/.bashrc
fi

#Use rvm to install ruby 1.9.2 and set it to default
rvm install 1.9.2
rvm use --default 1.9.2

#Install Rails
gem install rails
