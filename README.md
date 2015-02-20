# wellington-transit-postgis

Scripts to import Metlink GTFS data to a PostGIS database. All of the heavy lifting is done by [cbick's GTFS SQL importer](https://github.com/cbick/gtfs_SQL_importer), with some slight modifications in [rocket-pack's fork](https://github.com/joshmcarthur/gtfs_SQL_importer).

Note: These scripts are good to go, but aren't built to magically work on everything. They work for me on OS X, but YMMV. I believe the only dependencies are a working PostGIS installation, and [Postgrest](https://github.com/begriffs/postgrest) if you want to provide an API for the data.

Scripts:

* `db_setup.sh`: Creates a database, creates the PostGIS extension on it, and sets up the schema that Postgrest requires.
* `update.sh`: **Must** be run before the import. Downloads and extracts the transit feed data from Metlink. Plain text files are stored in `data/` if you're keen to have a look.
* `import.sh`: Basically invokes the GTFS SQL importer scripts.
* `run_dev.sh`: Runs Postgrest as the local user against the transit database.
