Federation App
==============

Example REY app that lets anyone easily provide an APP with static score data. This lets users to build a "federation", or a privately-managed, publicly-accessible subworld where they can freely give scores to other users, identified by public keys.

Requirements
------------

You'll need [rey-cli](http://github.com/reputation-network/rey-cli) installed in your system.

Usage
-----

Simply start the app with:

    docker-compose up

Then, you'll need to register the app's manifest on the running blockchain node with:

    rey-cli dev cmd publish-manifest 0x88032398beab20017e61064af3c7c8bd38f4c968 http://localhost:8000/manifest

Configuration
-------------

You might want to override any of the docker compose variables in a production setup. Additional environment variables are:

* `NAME`: The name of the federation.

* `APP_URL`: The URL where the federation has been deployed (i.e. the `/data` endpoint).

* `PICTURE_URL`: The app's icon URL.

* `SCORES`: The actual scores to be given about users. They need to be formatted as a dictionary, serialized as JSON string, as follows:

    { "0x88032398beab20017e61064af3c7c8bd38f4c968": 21,
      "0x31bb9d47bc8bf6422ff7dcd2ff53bc90f8f7b009": 50,
      "0x6d644c57247de51da20797f14dceedfbc4ef6561": 80,
      "0xe370c47450427a2baa9bff3557bf574162f3ca54": 41 }
