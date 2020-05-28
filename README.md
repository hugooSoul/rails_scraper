# README

This Script containt a Scraper class and a Main task.
The task get an String (that it's an URL).
The Script just work for Poder Judicial url's, because get info from some specifics css classes.

In case you don't pass and URL in the rake an message gonna be shown.
Or in case of some error some rescues going to stop the process and display the error.

* Ruby version

> 2.6.3

* How to run the script

```
    $ bundle install
    $ rails db:migrate
    $ rake judicial:scraper['PODER_JUDICIAL_URL']
```


* Model

I created a model called Document with the following fields

```
    :court
    :author
    :defendant
    :summary
    :notification
```

`By Default` it's using Sqlite on DB.
I Created a copy of `database.yml` with the Mysql necessary values called `database.yml.mysql` in case you wanna change it. Just need to change user and password by yours.

In the `Gemfile` it's commented the `mysql2`gem in case of making a switch it's necessaty to
comment `sqlite`gem and uncomment the `mysql2`gem.
After that, run `bundle install`and `rails db:create` to generate the new DB.

* First Attempt
#### Not working anymore

in the seeds.rb file I created a method that gets and URL,
in case that you gonna use a different URL, it's necessary to change it in the file first.

```
    $ bundle install
    $ rails db:migrate
    $ rails db:seed
```