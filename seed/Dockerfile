FROM mongo

COPY init.json /init.json
CMD mongoimport --host mongo --db gourou --collection users --type json --file /init.json --jsonArray
