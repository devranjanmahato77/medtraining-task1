const http = require('http')
const server = http.createServer((req,res)=>{
    if(req.url == '/training')
        res.end("Hello World!!!")
    else{
        res.writeHead(404,{"Content-type":"text/html"});
        res.end("<h1>404 ERROR - PAGE DOES NOT EXIST<h1>")
    }
})
server.listen(1234,()=>{
    console.log("Server listening...")
})