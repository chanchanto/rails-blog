# Prerequisites
* Ruby 3.2.0
* Rails 7.0.4.2
* PostgreSQL

# Dependencies
Install ImageMagick and/or libvips for gem `image_processing` ([installation guide](https://github.com/janko/image_processing#installation))

# Configuration

Create a `.env` file at root, with the below content:
```
GOOGLE_OAUTH_CLIENT_ID=?
GOOGLE_OAUTH_CLIENT_SECRET=?
```
Replace the `?` with your `client ID` and `client secret` from [Google Credentials API](https://console.cloud.google.com/apis/credentials), or create new credential if you don't have one yet ([guide](https://developers.google.com/workspace/guides/create-credentials)).

# Database initialization (PostgreSQL)

For config database in `development`, Open `config/database.yml` file, edit `username` (line 32), `password` (line 35), `host` (line 40), `port` (line 44).
Then run:
```
rails db:create
rails db:migrate
```

# Deployment instructions (Scalingo)
1. Sign in to [Scalingo](https://scalingo.com/) (no credit card needed)
2. Create an application, choose to deploy branch `main`
3. Go to your app dashboard and add addon: PostgreSQL (Sandbox)
4. Add [environment variables](https://doc.scalingo.com/platform/app/environment#ruby): `GOOGLE_OAUTH_CLIENT_ID`, `GOOGLE_OAUTH_CLIENT_SECRET`
5. Deploy your app by going to your dashboard in Deploy/Manual deployment, and click Trigger deployment
 (or you can try [other deploy methods](https://doc.scalingo.com/platform/deployment/deployment-process#deployment-trigger) as well)
6. [Install Scalingo CLI](https://doc.scalingo.com/platform/cli/start) and [Login](https://doc.scalingo.com/platform/cli/introduction#prerequisites)
7. Lastly, from your terminal, run:
```
scalingo -a rails-blog run rails db:migrate
```
replace `rails-blog` with your app name

