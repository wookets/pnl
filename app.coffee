
express = require 'express'
http = require 'http'


app = express()

app.configure () ->
  app.set('port', process.env.PORT || 3000)
  app.use express.favicon() 
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static('./public')
  
app.configure 'development', () ->
  app.use express.errorHandler()


# app.get '/comics', (req, res, next) ->
#   zip = new zipfile.ZipFile(__dirname + '/test/comics/xxx.cbz')
#   
#   
# #   zipEntries = zip.getEntries()
# #   zipEntries.forEach (zipEntry) ->
# #     console.log zipEntry.entryName
# #      
#   buffer = zip.readFileSync('aaa-000.jpg')
#   res.set('Content-Type', 'image/jpg')
#   res.send(buffer)
  #res.set('Content-Type', 'image/jpg')
  #res.send(__dirname + '/test/aaa-000.jpg')
  #res.sendfile(__dirname + '/test/aaa-000.jpg')

#   for file in fs.readdirSync(__dirname + '/test/comics')
#     #console.log file
#     data = fs.readFileSync(__dirname + '/test/comics/xxx.cbz')
#     reader = z.Reader(data)
#     #res.set('Content-Type', 'image/jpg')
#     res.set('Content-Type', 'image/jpg')
#     res.sendfile(reader)
#     #console.log reader.toObject('utf-8') 


http.createServer(app).listen app.get('port'), () ->
  console.log "Express server listening on port #{app.get('port')}"
