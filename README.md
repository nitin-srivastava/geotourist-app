# Geotourist App

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Ruby
You must have Ruby version `2.7.2`. Use `rbenv` or `rvm` to install it. I prefer `rbenv` over `rvm`. You can check out, on how to install [rbenv](https://github.com/rbenv/rbenv).

### Rails
This app is developed on `rails -v 6.0.3.4`. See the Project setup instruction to install.

### Postgresql
This app is using Postgres database. If not installed, one can look into their official documentation [here](https://www.postgresql.org/download/) and follow the steps as given.

If you are using MacOS and love commands then run below lines
```
brew install postgresql
brew services start postgresql
```
### Redis Server
If you don't have a Redis server running yet, install it for your platform of choice:
#### Mac OS X

Make sure you have brew installed.
```cassandraql
$ brew update
$ brew install redis
$ brew services start redis
```
#### Ubuntu
```
$ sudo apt install redis-server
$ sudo service redis-server restart
```

### Git
Make sure you have git installed on your system, if you haven't, just refer this [How to install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).