so far I had to manually add a user and two databases to postgres as described here -

https://github.com/graphile/migrate#getting-started

(Is there a way I can put that in a script)

Then with my database service running, I had to run my server with a custom command to initialize (so it can connect to the db)

docker-compose run server yarn migrate:init
