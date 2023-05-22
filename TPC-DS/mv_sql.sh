#!/bin/sh
x=$1
SQL_PATH="/root/data/tpcds/TPC-DS/05_sql/"
BACKUP_PATH="/root/data/tpcds/TPC-DS/05_sql/backup/"

echo "Move queries"
mv ${SQL_PATH}*.sql ${BACKUP_PATH}
if [[ $x -eq 1 ]]
   then
       echo "cp 1-9 sql"
       mv ${BACKUP_PATH}*?.*?.*0[0-9].*? ${SQL_PATH}
elif [[ $x -eq 2 ]]
   then
       echo "cp 10-18 sql"
       mv ${BACKUP_PATH}*?.*?.*1[0-8].*? ${SQL_PATH}
elif [[ $x -eq 3 ]]
   then
       echo "cp 19-27 sql"
       mv ${BACKUP_PATH}*?.*?.*1[9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*2[0-7].*? ${SQL_PATH}
elif [[ $x -eq 4 ]]
   then
       echo "cp 28-36 sql"
       mv ${BACKUP_PATH}*?.*?.*2[8-9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*3[0-6].*? ${SQL_PATH}
elif [[ $x -eq 5 ]]
   then
       echo "cp 37-45 sql"
       mv ${BACKUP_PATH}*?.*?.*3[7-9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*4[0-5].*? ${SQL_PATH}
elif [[ $x -eq 6 ]]
   then
       echo "cp 46-54 sql"
       mv ${BACKUP_PATH}*?.*?.*4[6-9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*5[0-4].*? ${SQL_PATH}
elif [[ $x -eq 7 ]]
   then
       echo "cp 55-63 sql"
           mv ${BACKUP_PATH}*?.*?.*5[0-5].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*6[0-3].*? ${SQL_PATH}
elif [[ $x -eq 8 ]]
   then
       echo "cp 64-72 sql"
           mv ${BACKUP_PATH}*?.*?.*6[0-4].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*7[0-2].*? ${SQL_PATH}
elif [[ $x -eq 9 ]]
   then
       echo "cp 73-81 sql"
           mv ${BACKUP_PATH}*?.*?.*7[3-9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*8[0-1].*? ${SQL_PATH}
elif [[ $x -eq 10 ]]
   then
       echo "cp 82-90 sql"
           mv ${BACKUP_PATH}*?.*?.*8[2-9].*? ${SQL_PATH}
       mv ${BACKUP_PATH}*?.*?.*9[0].*? ${SQL_PATH}
elif [[ $x -eq 11 ]]
   then
       echo "cp 91-99 sql"
           mv ${BACKUP_PATH}*?.*?.*9[0-9].*? ${SQL_PATH}
elif [[ $x -eq 0 ]]
   then
       echo "cp 1-99 sql"
           mv ${BACKUP_PATH}* ${SQL_PATH}

else
       echo "specify the order [1-11] for sql run"
fi
ls ${SQL_PATH}*.sql
