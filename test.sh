echo $a
#printf '# Scrpt name : %s%40s Date :%s%40s\n' "nadf:e" "MM/DD/YY" '#'
#printf '# Script name : %s%40s%s%20s#\n' "nadcdfddf:e" "Date : MM/DDsfdsf/YY"
format='# %-11s : %-32s %-6s : %-21s#\n'
format2='# %-11s : %-63s#\n'
printf "$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY"
printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com"
printf "$format2" "Description" ""
printf '#%.0s' {1..80}
