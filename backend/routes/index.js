const candidatosRouter = require('./internal/candidatos')
const candidaturaRouter = require('./internal/candidatura')
const loginRouter = require('./internal/login')
const registroRouter = require('./internal/registro')


module.exports = {
  register(app) {
    app.use('/candidatos', candidatosRouter)
    app.use('/candidatura', candidaturaRouter)
    app.use('/tudo', candidatosRouter)
    app.use('/register', candidatosRouter)
    app.use('/login', loginRouter)
    app.use('/registro', registroRouter )
    

  }
}