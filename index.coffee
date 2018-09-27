express = require('express')
vars = require('./config/vars')

app = express()

require('./app/app')(app, vars)

app.use express.static(__dirname + '/public')
app.set 'views', __dirname + '/app/views'
app.set 'view engine', 'pug'
app.locals.vars = vars

app.listen(vars.port)
