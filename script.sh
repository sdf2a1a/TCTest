git add *

vers=$(grep "spec.version      =" TCTest.podspec)
versarr=(${vers//=/ })  

git commit -am ${versarr[1]}
git push

git tag ${versarr[1]}
git push origin ${versarr[1]}


a=`ls`

for i in ${a[@]};  do 

	string=$i  
	array=(${string//./ })  
 

	if [[ ${#array[*]} = 2 ]]; then
	
		for var in ${array[@]}  
		do
   

			if [[ $var = "podspec" ]]; then
				

				pod repo push ${array[0]} ${array[0]}.podspec
			fi

	done 
fi


done

