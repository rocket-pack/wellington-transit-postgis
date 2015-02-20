createdb wellington_transit
psql wellington_transit -c 'create extension postgis;create schema "1"; alter database wellington_transit set search_path="1";'
