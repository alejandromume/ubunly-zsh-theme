RED='\033[0;31m'
Green='\033[1;32m'
ORANGE='\033[1;33m'
BOLD_CYAN='\033[1;36m'
NC='\033[0m' # No Color

zsh_custom_directory="$HOME/.oh-my-zsh/custom"

cp ubunly.zsh-theme $zsh_custom_directory/themes
printf "${BOLD_CYAN}\n\n[-] ${NC}Installing Theme...\n\n"


printf "╔══════════════════════════════════════════════════════════════════════════════╗ \n"
printf "║ Remeber to add ${BOLD_CYAN}zsh-autosuggestions${NC} and ${BOLD_CYAN}zsh-autosuggestions${NC} to your plugins   ║ \n"
printf "╚══════════════════════════════════════════════════════════════════════════════╝ \n\n"


if [ ! -d "/usr/share/zsh-autosuggestions" ] || [ ! -d "$zsh_custom_directory/plugins/zsh-autosuggestions" ]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $zsh_custom_directory/plugins/zsh-autosuggestions --quiet
	sudo cp -r $zsh_custom_directory/plugins/zsh-autosuggestions /usr/share/
else
	printf "${RED}[-] ${NC}zsh-autosuggestions is alredy installed\n"
fi

if [ ! -d "/usr/share/zsh-syntax-highlighting" ] || [ ! -d "$zsh_custom_directory/plugins/zsh-syntax-highlighting" ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_custom_directory/plugins/zsh-syntax-highlighting --quiet
	sudo cp -r $zsh_custom_directory/plugins/zsh-syntax-highlighting /usr/share/
else	
	printf "${RED}[-] ${NC}zsh-syntax-highlighting is alredy installed\n"
fi

printf "\n${Green}[✱] ${ORANGE}Ubunly ZSH Theme ${Green}Installed successfully!${NC}\n\n"

printf "╔══════════════════════════════════════════╗ \n"
printf "║ Set ${ORANGE}ubunly ${NC}as ZSH_THEME in your .zshrc   ║ \n"
printf "╚══════════════════════════════════════════╝ \n\n"


