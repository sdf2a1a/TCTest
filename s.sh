git add *
git commit -am "commit"
git push


for i in ${a[@]};  do 

string=$i  
array=(${string//./ })  
 

if [[ ${#array[*]} = 2 ]]; then
	
for var in ${array[@]}
do
   # echo $var

if [[ $var = "podspec" ]]; then
	pod repo push ${array[0]} ${array[0]}.podspec
fi

done 
fi


done