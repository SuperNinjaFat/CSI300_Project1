mysqlimport --ignore-lines=1 \
            --fields-terminated-by=, \
            --local -u root \
            -p Database \
             City_of_Burlington_Property_Details.csv