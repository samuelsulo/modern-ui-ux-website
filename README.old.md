# modern-ui-ux-website
 Fully Responsive Modern UI/UX Website in React JS

# create containers or components
``` bash
containers=features,footer,header,possibility,vlog,whatGPT3
containers_list=$(echo $containers | tr "," "\n")

echo containers_list | while read line;
do
mkdir $line
cd $line 
tmp=$(echo $line | cut -c 1 | tr [:lower:] [:upper:])
touch $tmp$(echo $line | cut -c 2-).jsx $line.css
cd ..;
done
```

ls -1 | while read line;
do  
mkdir $line || continue
echo ciao; 
done