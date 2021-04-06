# README


This README should document all the necessary steps to make the app running.
So I´ll try for the first time:


## Mr. Cocktail

The developing of this app was part of the [LeWagon](http://github.com)
Bootcamp. But while the exrecise I couldn't make it work the way it should.

A couple of weeks later - exactly now - I give it the next try: Just starting right way the READ.ME.


### Conditions

For this app make sure your ruby version is min. **ruby** 2.6.6p146 - this way:

```
ruby -v
```

The used **Rails** version is 6.0.3.5.
Try it out:

```
rails -v
```

To make this app work we have to install yarn. Like the following code shows.


```
# on macOS:
brew install yarn

# if you are using Ubuntu:
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```


Now go in the terminal to your folder and create the new app afterwards.

```
cd ~/folder_one/folder_one_one
rails new rails-mister-cocktail --database=postgresql --skip-action-mailbox -T
cd rails-mister-cocktail
```

Now it's time to create the database via postgresql
```
rails db:create
```



In your ```Gemfile``` we use instead of the predefined sqlite. Open the Gemfile and replace it with

```
gem "pg"
```
.

In the ```config/database.yml``` delete all the pregiven stuff and replace it with the following code:

```ruby
# PostgreSQL. Versions 9.3 and up are supported.
#
# Install the pg driver:
#   gem install pg
# On macOS with Homebrew:
#   gem install pg -- --with-pg-config=/usr/local/bin/pg_config
# On macOS with MacPorts:
#   gem install pg -- --with-pg-config=/opt/local/lib/postgresql84/bin/pg_config
# On Windows:
#   gem install pg
#       Choose the win32 build.
#       Install PostgreSQL and put its /bin directory on your path.
#
# Configure Using Gemfile
# gem 'pg'
#
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  ```


and beside put that code into the same file underneath:

```ruby
development:
  <<: *default
  database: rails_mister_cocktail_development

  # The specified database role being used to connect to postgres.
  # To create additional roles in postgres see `$ createuser --help`.
  # When left blank, postgres will use the default role. This is
  # the same name as the operating system user that initialized the database.
  #username: rails_mister_cocktail

  # The password associated with the postgres role (username).
  #password:

  # Connect on a TCP socket. Omitted by default since the client uses a
  # domain socket that doesn't need configuration. Windows does not have
  # domain sockets, so uncomment these lines.
  #host: localhost

  # The TCP port the server listens on. Defaults to 5432.
  # If your server runs on a different port number, change accordingly.
  #port: 5432

  # Schema search path. The server defaults to $user,public
  #schema_search_path: myapp,sharedapp,public

  # Minimum log levels, in increasing order:
  #   debug5, debug4, debug3, debug2, debug1,
  #   log, notice, warning, error, fatal, and panic
  # Defaults to warning.
  #min_messages: notice

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.

# test:
#   <<: *default
#   database: rails_mister_cocktail_test

# As with config/credentials.yml, you never want to store sensitive information,
# like your database password, in your source code. If your source code is
# ever seen by anyone, they now have access to your database.
#
# Instead, provide the password as a unix environment variable when you boot
# the app. Read https://guides.rubyonrails.org/configuring.html#configuring-a-database
# for a full rundown on how to provide these environment variables in a
# production deployment.
#
# On Heroku and other platform providers, you may have a full connection URL
# available as an environment variable. For example:
#
#   DATABASE_URL="postgres://myuser:mypass@localhost/somedatabase"
#
# You can use this database configuration with:
#
#   production:
#     url: <%= ENV['DATABASE_URL'] %>
#
production:
  <<: *default
  database: rails_mister_cocktail_production
  username: rails_mister_cocktail
  password: <%= ENV['RAILS_MISTER_COCKTAIL_DATABASE_PASSWORD'] %>

```

Now please open your terminal and run:

```rails

rails db:create
rails db:migrate
rails db:seed

```



