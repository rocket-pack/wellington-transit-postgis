host=localhost
port=5432
server_port=3000

postgrest --db-host $host --db-port $port --db-name wellington_transit --port $server_port --db-user $USER --db-pool 200 --anonymous $USER

