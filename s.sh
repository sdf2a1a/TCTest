git add *
git commit -am "commita"
git push


for i in ${a[@]};  do 

string=$i  
array=(${string//./ })  
 

if [[ ${#array[*]} = 2 ]]; then
	
for var in ${array[@]}
do
   # echo $var

if [[ $var = "podspec" ]]; then
	echo ${array[0]}.podspec
	pod repo push ${array[0]} ${array[0]}.podspec
fi

done 
fi


done