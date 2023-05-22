#!/bin/sh
x=$1
echo "Move queries"
#mv *.sql backup/
if [[ $x -eq 1 ]]
   then
       echo "Run 1-9 sql"
elif [[ $x -eq 2 ]]
   then
       echo "Run 10-18 sql"
elif [[ $x -eq 3 ]]
   then
       echo "Run 19-27 sql"
elif [[ $x -eq 4 ]]
   then
       echo "Run 28-36 sql"
elif [[ $x -eq 5 ]]
   then
       echo "Run 37-45 sql"
elif [[ $x -eq 6 ]]
   then
       echo "Run 46-54 sql"
elif [[ $x -eq 7 ]]
   then
       echo "Run 55-63 sql"
elif [[ $x -eq 8 ]]
   then
       echo "Run 64-72 sql"
elif [[ $x -eq 9 ]]
   then
       echo "Run 73-81 sql"
elif [[ $x -eq 10 ]]
   then
       echo "Run 82-90 sql"
elif [[ $x -eq 11 ]]
   then
       echo "Run 91-99 sql"
else
       echo "specify the order [1-11] for sql run"
fi
#mv backup/*?.*?.*0[0-9].*? /root/data/tpcds/TPC-DS/05_sql/

