git add *
git commit -am "commit"
git push


for dir in $(ls /usr/)
do
 [ -d $dir ] && echo $dir
done  
