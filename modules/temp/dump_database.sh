echo -n "mysql password > "
read -s mpass
echo 

mysqldump -uclear --password=$mpass clear --add-drop-table --no-create-db >current_all.sql
rm -f ../../install/simpleness.sql
mv current_all.sql ../../install/simpleness.sql

