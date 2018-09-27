require('dotenv').config()

module.exports =
  port: parseInt(process.env.PORT || 4567)
  name: process.env.NAME || "Sample Federation"
  blockchainNodeUrl: process.env.BLOCKCHAIN_NODE_URL || "http://localhost:8545"
  appUrl: process.env.APP_URL || "http://localhost:8000/data"
  homepageUrl: process.env.HOMEPAGE_URL || 'http:localhost:8000'
  pictureUrl: process.env.PICTURE_URL || 'https://avatars1.githubusercontent.com/u/42174428?s=200&v=4'
  address: process.env.APP_ADDRESS || "0x88032398beab20017e61064af3c7c8bd38f4c968"
  scores: JSON.parse(process.env.SCORES || '{"0x88032398beab20017e61064af3c7c8bd38f4c968":21,"0x31bb9d47bc8bf6422ff7dcd2ff53bc90f8f7b009":50,"0x6d644c57247de51da20797f14dceedfbc4ef6561":80,"0xe370c47450427a2baa9bff3557bf574162f3ca54":41}')
