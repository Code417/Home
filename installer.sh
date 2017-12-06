#usage:
#         wget -nv -O - https://raw.githubusercontent.com/Code417/Home/master/installer.sh 2>/dev/null | VERBOSE=true bash
# this script assumes (cp, local, type ) as shell built-in
# this script assumes ( [[, [, awk, cat) from BusyBox
# this script assumes (wget, whoami) from BusyBox
# this script assumes (curl) from System

# {} prevents exicution until file is fully downloaded
{

T33MAZ_TMP=~/tmp_t33maz	
T33MAZ_ZIP_FILE=$T33MAZ_TMP/file.zip
T33MAZ_ZIP_URL="https://github.com/Code417/Home/archive/master.zip"
T33MAZ_EXT=$T33MAZ_TMP
T33MAZ_EXT_IPATH='Home-*/*'
#T33MAZ_
mkdir -pv $T33MAZ_EXT	
if [ ! -f $T33MAZ_ZIP_FILE ]; then
	curl $T33MAZ_ZIP_URL --output $T33MAZ_ZIP_FILE -L --silent
fi
if [ -f $T33MAZ_ZIP_FILE ]; then
	unzip -o $T33MAZ_ZIP_FILE $T33MAZ_EXT_IPATH -d $T33MAZ_EXT
	mv $T33MAZ_EXT/Home* $T33MAZ_EXT/home
	mv -n $T33MAZ_EXT/home/.* $T33MAZ_EXT/home/* ~/
fi
rm -r $T33MAZ_TMP
}
