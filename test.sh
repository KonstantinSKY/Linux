#echo $a
str1=$(printf '#%.0s' {1..80})
#echo "$(printf '#\e[79b\n')" > file
echo $str1 > file

format='# %-11s : %-32s %-6s : %-21s#\n'
format2='# %-11s : %-63s#\n'
printf "$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY" >> file
printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com" >> file
printf "$format2" "Description" "" >> file
echo $str1 >> file

echo  "Name : $0" 
echo  "Base Name : $(basename $0)" 
#printf '#\e[79b\n\n' >> file
echo $(date +%F)

echo $(date +%m/%d/%Y)

#str1="$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY" 
#printf $str1


#printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com"
#printf "$format2" "Description" ""
#printf '#\e[79b\n\n'
