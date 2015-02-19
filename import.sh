#!/bin/sh

cd gtfs_SQL_importer/src

cat gtfs_tables.sql | psql wellington_transit
python import_gtfs_to_sql.py ../../data/ | psql wellington_transit
cat gtfs_tables_makespatial.sql | psql wellington_transit
cat gtfs_tables_makeindexes.sql | psql wellington_transit
cat vacuumer.sql | psql wellington_transit
