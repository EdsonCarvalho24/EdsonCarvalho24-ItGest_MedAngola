const express = require('express')
var cors = require('cors')
const server = express()

const EXPRESS_PORT = 3000
  
server.use(cors())

module.exports = {
  bootstrap: (callback) => {
    server.listen(EXPRESS_PORT, () => {
      console.log(`Listening on port ${EXPRESS_PORT}`);
      
      if (callback) {
        callback(server)
      }
    })
  }
}



