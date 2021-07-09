const server = require('./server')
const routes = require('./routes')

server.bootstrap((appServer) => {
  routes.register(appServer)
})