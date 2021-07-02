const provinciaRouter = require('./internal/provincia')

module.exports = {
  register(app) {
    app.use('/provincia', provinciaRouter)
  }
}