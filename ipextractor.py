import simplejson

filename='filename.json'

with open(filename, "r") as f:
    data = simplejson.loads(f.read())


f2 = open("filename.txt", "a")

for i in range (0,7000):
    #f2.write(data['matches'][i]['ip_str']+":"+str(data['matches'][i]['port'])+"\n") #uncomment this line to also include ports
    f2.write(data['matches'][i]['ip_str']+"\n")


f2.close()
