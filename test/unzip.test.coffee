
z = require 'zip'
fs = require 'fs'

# data = fs.readFileSync('./comics/Hard Boiled 1 remastered.cbz')
# reader = z.Reader(data)
# console.log reader.toObject('utf-8') 


for file in fs.readdirSync(__dirname + '/comics')
  console.log file
  data = fs.readFileSync(__dirname + '/comics/Hard Boiled 1 remastered.cbz')
  reader = z.Reader(data)
  console.log reader.toObject('utf-8') 
  
  