export PGPASSWORD=docker
psql -h localhost -p 32769 -d docker -U docker -f data.sql
