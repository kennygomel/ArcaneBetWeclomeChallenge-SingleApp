# ArcaneBet Welcome Challenge

> A Ruby on Rails + Vue.js project

## Installation
 
Make sure that you have installed PostgreSQL and Redis

Use these commands to run the project

```
git clone https://github.com/kennygomel/ArcaneBetWeclomeChallenge-SingleApp.git ArcaneBet

cd ArcaneBet

bundle install

npm install
```

Create **local_env.yml** file at **config/** folder.
It will be used for environment variables.
This file should contain at least next params:

```
REDIS_URL: 'YOUR_REDIS_URL_WITH_PORT' #redis://localhost:6379/1
DATABASE_URL: 'YOUR_DATABASE_URL' # localhost
DATABASE_NAME: 'YOUR_DATABASE_NAME' # arcanebet
DATABASE_USERNAME: 'YOUR_DATABASE_USERNAME' # arcanebet
DATABASE_PASSWORD: 'YOUR_DATABASE_PASSWORD' # arcanebet
```

For the last step you need to apply database migrations

```
# if you didn't created the database
rails db:create

rails db:migrate
```

And now you can start the app

```
rails s
```

## Testing

At this project you can find **RSpec** and **Rubocop** for the backed part and the **Cypress** for the frontend

**Attention:**
- If you can't execute **cypress** use NPX install command

```
# rspec && rubocop

rspec

rubocop


# cypress

# use 'run' to run tests in bash, or 'open' to do the same in UI
cypress run || open


# if cypress not working like binary, use next commands


#npx install command

npm i -g npx

#then use 'npx cyrpess' in 'app' folder to run cypress tests

```
