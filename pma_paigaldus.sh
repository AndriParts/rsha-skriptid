# phpmyadmin paigaldusskript
#
# kontrollime, mitu korda phpmyadmin korral ok installed
#sõnad on leitud ja vastuse salvestame
# muutuja sisse:
PMA=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
# kui PMA muutuja väärtus võrdub 0-ga
if [ $PMA -eq 0 ]; then
        # siis ok installed ei ole leitud
        # ja väljastame vastava teate ning
        # paigaldame teenuse
        echo "Paigaldame phpmyadmini ja vajalikud lisad"
        apt install phpmyadmin
        echo "Phpmyadmin on paigaldatud"
# kui PMA muutuja väärtus võrdub 1-ga
elif [ $PMA -eq 1 ]; then
       # siis ok installed on leitud 1 kord
       # ja teenus on juba paigaldatud
       echo "Phpmyadmin on juba paigaldatud"
       #kontrollime olemasolu
# lõpetame tingimuslause
fi
# skripti lõpp
