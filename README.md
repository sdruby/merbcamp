Merbcamp
========

## Getting started

### Clone the app
1. `cd Sites/` (or wherever you like to store projects locally)
2. `git clone git@github.com:sdruby/merbcamp.git merbcamp`

### Configure the app and bundle install
1. Switch to Ruby 2.7.7 with the Ruby version manager of your choice (this
should happen automatically from the `.ruby-version` file)
2. `bundle install`

### Launch the app
1. Run `bundle exec foreman start` to launch the app.

## Deploy the app
The app is hosted on a dokku-managed droplet on Digital Ocean.

1. `git remote add droplet dokku@droplet.mokolabs.com:merbcamp` to add droplet remote
2. `git push droplet master` to deploy the changes

### Gotchas

- Changes not showing up locally? This is because the app is set to cache pages by default. If you make local changes, you may not see them until the caching is removed or expires on its own. To review the caching, remove the cache control headers in `app.rb`.
