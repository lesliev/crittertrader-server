Crittertrader Server
====================

Trade your critters!

Crittertrader is a web server used to swap critters evolved with the awesome Critterding
program written by Bob Winckelmans: http://critterding.sourceforge.net

The server is written in Rails 4. You can run your own if you like, or just use the
public server which should be online and swapping critters right now.

The client program can be found here: https://github.com/lesliev/crittertrader


Running the server
==================

You'll probably need Linux or OSX. Rails relies on quite a few gems. I'm running Ruby 2.1.1
and Rails 4.0.3. To get that version of Ruby you'll probably need rbenv or rvm, or you 
can try an older version, but Rails 4 needs Ruby 1.9.3 or later.

Installing
----------

To install you'll need to do something like this:


```
ruby --version       # should be v1.9.3 or higher
gem install bundler
git clone https://github.com/lesliev/crittertrader-server.git
cd crittertrader
git checkout master
bundle install
```

Now you need to set up a database. I use postgres, if you want to use something else,
you'll need to change the Gemfile to include whatever adapter you need. 

Next edit config/database.yml with some database settings.

Some examples here: https://gist.github.com/erichurst/961978
You only need a 'production' stanza in there.

To create the database:

```
bundle exec rake db:create RAILS_ENV=production
bundle exec rake db:migrate RAILS_ENV=production
```

Running
-------

To run the server (on port 3500):

```
bundle exec rails s production -p 3500
```

To run it efficiently you should probably set up a proper web server like nginx, I highly
recommend nginx-passenger. See: http://www.modrails.com

The 'rails s' command above is the slow hacky way and will exit when you close the terminal.
You can possibly get away with running it in a gnu screen session.

