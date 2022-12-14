# This script will drop old databases/tables and re-create them in the appropriate order
# This script requires an option file to be set (see README), for provision of password (not over command line)

# Helper Functions ------------------------------------------------------------------------------
# For logging:
timestamp() {
    date +"%T"
}

# Constants---------------------------------------------------------------------------------------
# SQL script dir
location="/home/titan0/cs332g/cs332g20/homepage/sql"
# Ordered Array:
scripts=("$location/drop.sql"
"$location/tables.sql"
"$location/data.sql")
# Default database:
schema="cs332g20"

echo "Now running SQL scripts"

for val in ${scripts[@]}; do
    timestamp >> log.txt
    echo "    Running $val" >> log.txt
    sshpass -f './password' ssh cs332g20@shell.ecs.fullerton.edu "mysql -h mariadb $schema < $val" >> log.txt
done

timestamp >> log.txt
echo -e "    Sequence completed! \n---------------------------------------- \n" >> log.txt
echo "" >> log.txt
echo "Sequence completed! Check log.txt for details."