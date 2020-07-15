from shodan import Shodan
import json

api = Shodan('no')

# query to search 
query=''

results = api.search(query,limit=1000)

with open('filename.json', 'w') as f:
    json.dump(results, f)


