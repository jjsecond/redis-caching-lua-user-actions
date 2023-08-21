# To run

- in cli
- Run a local redis instance: `redis-server`
- run redis cli `redis-cli`
- create redis keys with values:
 1. set `contantId:someId:userAction:seenOnboarding`
 1. set `contantId:someId:userAction:giftedAnArticle`
 1. set `contantId:someId:userAction:savedAnArticle`
 - Check they are all saved with `GET KEY` for each item


- run the script  `redis-cli --eval create_list.lua someId`

- run the script: `redis-cli --eval create_list.lua someId`

- the script will print the hash

- in the redis cli you cn also run `HVALS key`