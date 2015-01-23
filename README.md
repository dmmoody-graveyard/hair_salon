Hair Salon
==========

by <a href="http://moodyco.de" target="_blank">Duane M. Moody</a>.

An app for a hair salon. The owner should be able to add a list of their stylists, and for each stylist, add clients who see that stylist. The stylists work independently, so each customer only belongs to a single stylist.

Installation
------------

Install Hair Salon by first cloning the repository.  
```
$ git clone http://github.com/dmmoody/hair_salon
```

Install all of the required gems:
```
$ bundle install
```

Start the webserver:
```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Database Setup
------------

With PostgreSQL, create the database:

``` sql
CREATE DATABASE hair_salon;
```

Once hair_salon database is created, change into the database with```\c hair_salon;``` and create the following tables:

``` sql
CREATE TABLE stylists (id serial PRIMARY KEY, name VARCHAR);
CREATE TABLE clients (id serial PRIMARY KEY, name VARCHAR, stylist_id INT);
```
To create the test database:

``` sql
CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;
```


Contribute
----------

- Issue Tracker: github.com/dmmoody/hair_salon/issues
- Source Code: github.com/dmmoody/hair_salon

Support
-------

If you are having issues, please let us know at: dmmoody@gmail.com

Bug reports
===========

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help us fixing the possible bug. We also encourage you to help even more by forking and sending us a pull request.

https://github.com/dmmoody/hair_salon/issues

License
=======

MIT License. Copyright 2014 Duane M. Moody | <a href="http://moodyco.de">MoodyCode</a>