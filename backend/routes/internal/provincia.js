const router = require('express').Router()
const { userSetter } = require('core-js/fn/symbol')


module.exports= router
  router.get('/',(req, res) =>{
    RTCPeerConnection.query('SELECT * FROM medangola.provincia',(error, results, )=>{
      if(error){
        throw error
      }
      res.send({
        code:200,
        meta:{
          pagination:{
            total: userSetter.length,
            pages: 1,
            page:1,
            limit: undefined
          }
        },
        data:results
      })
    })
  })







module.exports = router