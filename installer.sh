#usage:
#		 wget -nv -O - https://raw.githubusercontent.com/Code417/Home/master/installer.sh 2>/dev/null | VERBOSE=true bash
#############################################################################

#this script assumes (cp, local, type ) as shell built-in
#this script assumes ( [[, [, awk, cat) from BusyBox
#this script assumes (wget, whoami) from BusyBox
#{} prevents exicution until file is fully downloaded
{
SRC="https://github.com/Code417/Home/archive/master.zip"
mkdir -pv ~/tmp/home
if [ ! -f ~/tmp/master.zip ]; then
	wget -O ~/tmp/master.zip $SRC
fi
SRC=~/tmp/home/Home-master
unzip -o ~/tmp/master.zip -d ~/tmp/home
cp -r --no-clobber $SRC/.* ~/ 2>/dev/null
#rm -r ~/tmp/home
}
