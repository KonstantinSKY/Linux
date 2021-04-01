echo $a

printf '#\e[79b\n'
format='# %-11s : %-32s %-6s : %-21s#\n'
format2='# %-11s : %-63s#\n'
printf "$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY" 
printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com"
printf "$format2" "Description" ""
printf '#\e[79b\n\n'

str1="$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY" 
printf $str1


printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com"
printf "$format2" "Description" ""
printf '#\e[79b\n\n'
