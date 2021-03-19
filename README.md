# Rails Blog

This is a simple weblog app written in Ruby on Rails. The purpose of this project
is for me to learn some basic web development principles, as well as to learn how
to use the Ruby language and the Rails framework. The tutorial on which it's based
can be found [here](https://guides.rubyonrails.org/getting_started.html).

## Dependencies

- Ruby
- SQLite3
- Node.js
- Yarn

### Installing Ruby

To see if Ruby is already installed in your system, run the following command:

```
$ ruby --version
```

Rails requires Ruby version 2.5.0 or later. If the version number returned is less
than that number (such as 2.3.7, or 1.8.7), you'll need to install a fresh copy of
Ruby. If it's not already installed, install it from [here](https://rubyinstaller.org/).

### Installing SQLite3

To see if SQLite3 is already installed in your system, run the following command:

```
$ sqlite3 --version
```

If it's not already installed, install it from [here](https://www.sqlite.org).

### Installing Node.js

To see if Node.js is already installed in your system, run the following command:

```
$ node --version
```

Make sure that the version is greater than 8.16.0. If it's not already installed, install
it from [here](https://nodejs.org/en/download/).

### Installing Yarn

To see if Yarn is already installed in your system, run the following command:

```
$ yarn --version
```
If it's not already installed, install it from [here](https://classic.yarnpkg.com/en/docs/install).

### Installing Rails

To see if Rails is already installed in your system, run the following command:

```
$ rails --version
```

If it says something like 6.0.0, you're all set. If it's not already installed, you can
install it by typing the following command:

```
$ gem install rails
```

## Installing the Blog

```
$ git clone https://github.com/GeorgeSittas/Rails-Blog
```

## Setting it up locally

To get the website up and running, type the following commands in your terminal:

```
$ cd Rails-Blog
$ bin/rails server
```

This should start a web server process (Puma) locally on your system. At this point, you
can type `http://localhost:3000` into the URL field of your web browser to see the blog.
