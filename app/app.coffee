module.exports = (app, vars)->
  [username, password] = (vars.authentication || 'user:password').split(':');
  manifest =
    version: "1.0",
    name: vars.name,
    description: "#{vars.name} REY app",
    homepage_url: vars.homepageUrl,
    picture_url: vars.pictureUrl,
    address: vars.address,
    app_url: vars.appUrl,
    app_reward: 0,
    app_dependencies: []
  scores = vars.scores

  app.get '/', (req, res) =>
    res.render 'index'

  app.get '/manifest', (req, res) =>
    res.send JSON.stringify(manifest)

  app.get '/data', (req, res) =>
    subject = JSON.parse(Buffer.from(req.headers['x-permission-subject'], "base64"))
    res.send(score: scores[subject])
