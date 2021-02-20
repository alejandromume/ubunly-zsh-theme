#cp -r ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/ /usr/share/
RED='\033[0;31m'
Green='\033[1;32m'
ORANGE='\033[1;33m'
BOLD_CYAN='\033[1;36m'
NC='\033[0m' # No Color

printf "${BOLD_CYAN}\n\n[-] ${NC}Installing Theme...\n"
sudo cp ubunly.zsh-theme $ZSH_CUSTOM/themes

if [ ! -d "/usr/share/zsh-autosuggestions" ] || [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions --quiet	
	sudo cp -r $ZSH_CUSTOM/plugins/zsh-autosuggestions /usr/share/
else
	printf "${RED}[-] ${NC}zsh-autosuggestions is alredy installed\n"
fi

if [ ! -d "/usr/share/zsh-syntax-highlighting" ] || [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
	sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting --quiet
	sudo cp -r $ZSH_CUSTOM/plugins/zsh-syntax-highlighting /usr/share/
else	
	printf "${RED}[-] ${NC}zsh-syntax-highlighting is alredy installed\n"
fi

printf "\n${Green}[✱] ${ORANGE}Ubunly ZSH Theme ${Green}Installed successfully!${NC}\n\n"

printf "╔══════════════════════════════════════════╗ \n"
printf "║ Set ${ORANGE}ubunly ${NC}as ZSH_THEME in your .zshrc   ║ \n"
printf "╚══════════════════════════════════════════╝ \n\n"


