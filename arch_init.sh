echo "----- ArchLinux Quick Setup -----"



echo "Setting Archlinux mirror"
rm /etc/pacman.d/mirrorlist
echo "Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist

echo "Setting Archlinuxcn mirror"
echo "\n[archlinuxcn]\nServer = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist


pacman -Syy && pacman -S archlinuxcn-keyring yay

echo "Install packages"
pacman -S vim sudo git curl



