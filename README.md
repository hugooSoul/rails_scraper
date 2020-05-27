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

* First Attempt
##### Not working anymore

in the seeds.rb file I created a method that gets and URL,
in case that you gonna use a different URL, it's necessary to change it in the file first.

```
    $ bundle install
    $ rails db:migrate
    $ rails db:seed
```