# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
Install ImageMagick and/or libvips for gem `image_processing` ([installation guide](https://github.com/janko/image_processing#installation))

* Configuration
create a `.env` file at root, with the below content
```
GOOGLE_OAUTH_CLIENT_ID=?
GOOGLE_OAUTH_CLIENT_SECRET=?
```
replace the `?` with your `GOOGLE_OAUTH_CLIENT_ID` and `GOOGLE_OAUTH_CLIENT_SECRET` from [Google Credentials API](https://console.cloud.google.com/apis/credentials), or create new credential if you don't have one yet ([guide](https://developers.google.com/workspace/guides/create-credentials)).

* Database creation

* Database initialization

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
