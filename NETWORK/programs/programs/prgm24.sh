for file in *;
do
if [[ ! -x "$file" ]];
then 
chmod +x "$file"
echo "made $file executable"
fi
done
