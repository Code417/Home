# Home
Default Home Directory For Lab Computers

## Dependencies
-curl 

## Automatic Installation
`curl -L --silent https://raw.githubusercontent.com/Code417/Home/master/installer.sh | bash`

## Manual Installation
- [Download The Zip File](https://github.com/Code417/Home/archive/master.zip)
- move file to Downloads directory if its not already there
- unzip file `unzip -o ~/Downloads/master.zip -d ~/`
- remove unwanted files ex. `rm -r ~/Home-master/.config/` 
- move files from resulting folder into place `mv -n ~/Home-master/.* ~/`
- then open a new terminal to see the sweetness

## Files
`~/.bashrc` entry point for bash runtime config

`~/.bashfunctions` non-standard extra for function definitions

`~/.bashaliases` non-standard auto regenarating extra for alias definitions

## Additional Files
`~/packages.pkg` auto genarating file containing packages that can be installed via the `update` alias 

`~/.bash_profile` mirror for ~/bashrc
