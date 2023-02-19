# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
Install ImageMagick and/or libvips for gem `image_processing` ([installation guide](https://github.com/janko/image_processing#installation))

* Configuration

Create a `.env` file at root, with the below content:
```
GOOGLE_OAUTH_CLIENT_ID=?
GOOGLE_OAUTH_CLIENT_SECRET=?
```
Replace the `?` with your `client ID` and `client secret` from [Google Credentials API](https://console.cloud.google.com/apis/credentials), or create new credential if you don't have one yet ([guide](https://developers.google.com/workspace/guides/create-credentials)).

* Database initialization 

For config database in `development`, Open `config/database.yml` file, edit `username` (line 32), `password` (line 35), `host` (line 40), `port` (line 44).
Then run:
```
rails db:create
rails db:migrate
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
