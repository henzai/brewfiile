brew-install:
	echo "start brew-install"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew bundle	
	echo "success brew-install"

git-config:
	echo "start brew-install"
	git config --global user.name henzai
	git config --global user.email ry0chord@gmail.com
	echo "success git-config"

init-bash:
	echo "start init-bash"
	curl https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
	cp .bash_profile ~
	cp .bashrc ~
	source ~/.bash_profile
	echo "success init-bash"