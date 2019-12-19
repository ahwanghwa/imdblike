Simple IMDB clone
=================

> A simple IMDB clone application created with Ruby on Rails and Postgres.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Testing](#testing)
* [Status](#status)
* [Contact](#contact)

## General info
The application implements a simple IMDB clone application consisting of:
- Movie: Title, Text, Ratings, Category
- Ratings system from 1-10 available to registered users
- Home page that shows all movies and ability to filter movies by categories (URL driven and SEO Friendly)
- Movie Details Page that shows average rating
- From Home page it is possible to provide a quick star rating without reloading a page.
- Admin Interface to manage movies (CRUD)
- Pagination of Movies on Home Page
- Deploy application to cloud server like a Heroku or DigitalOcean
- Provide test coverage for the app using rspec or TDD
- Use bootstrap or similar for the UI 

## Technologies

- [PostgreSQL](http://www.postgresql.org/) - version 11
- [Ruby](http://www.ruby-lang.org/en/) - version 2.6.4
- [Rails](http://rubyonrails.org/) - version 6.0.0
- [Rspec](http://rspec.info/) - version 3.9.0

## Setup

Application is deployed to Heroku. Here's described how to install the application on local machine.
The application setup flow is described for [Ubuntu](https://ubuntu.com/) and should be similar to other UNIX-like systems.

### Data Base Setup 

You need to have [PostgreSQL](http://www.postgresql.org/) installed on your machine to run the application. 

The PostgreSQL installation tutorials are available on its [homepage](https://www.postgresql.org/docs/11/tutorial-install.html).

If you are running [Ubuntu](https://ubuntu.com/), a good step-by-step PostgreSQL installation tutorial can be found [here](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04) 

### Application Setup

You need to have [Ruby Version Manager (RVM)](https://rvm.io/) installed on your machine to run the application.
The RVM installation tutorial can be found [here](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rvm-on-ubuntu-18-04).

Open terminal and clone the application source code from github to a folder you like:
```
git clone https://github.com/ahwanghwa/imdblike.git
```
Enter the folder:
```
cd /your_folder_name
```
Run the bundler:
```
bundle
```
Start the application:
```
rails s
```
The application index page will be available at: [http://localhost:3000/](http://localhost:3000/). 

## Testing

The Rspec tests are located in "spec" subdirectory of the application root directory. 

Run tests with the following command:
```
bundle exec rspec
```

## Status
Project is _finished_.

## Contact
Created by [Oleksandr Matkovskyi](ahwanghwa@gmail.com) - feel free to contact me!
