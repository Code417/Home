# Home
Default Home Directory For Lab Computers

## automatic installation
`wget -nv -q -O - https://raw.githubusercontent.com/Code417/Home/master/installer.sh | bash` 

## manual installation
- [Download The Zip File](https://github.com/Code417/Home/archive/master.zip)
- move file to Downloads directory if its not already there
- unzip to home dir `unzip -o ~/Downloads/master.zip -d ~/`
- remove unwanted files `rm -r ~/Home-master/.config/` 
- move files from resulting folder into place `mv --no-clobber ~/Home-master/* ~/`
- then open a new terminal to see the sweetness


