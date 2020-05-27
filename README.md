# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

> 2.6.3

* How to run the script

in the seeds.rb file I created a method that gets and URL,
in case that you gonna use a different URL, it's necessary to change it in the file first.

```
    $ bundle install
    $ rails db:migrate
    $ rails db:seed
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