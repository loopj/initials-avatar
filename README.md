Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback. For example:

![Example avatar](example.png)


## Dependencies

This app requires [ImageMagick](http://www.imagemagick.org/) and [Ghostscript](http://www.ghostscript.com/) to be installed:

### Mac

```shell
$ brew install imagemagick ghostscript
```

### Ubuntu

```shell
$ sudo apt-get install ruby-dev libmagickwand-dev imagemagick
```


## Installation

```shell
bundle install
```


## Starting the Server

### Rackup

For running locally, I recommend using the `rackup` command:

```shell
$ rackup
```

### Docker

You can run this in production in [Docker](https://docker.com) as follows:

```shell
$ docker pull loopj/initials-avatar
$ docker run -p 80:80 loopj/initials-avatar
```


### Passenger Standalone

If you wish to run this in production, [Passenger Standalone](https://www.phusionpassenger.com/documentation/Users%20guide%20Standalone.html) is a great solution:

```shell
$ sudo passenger start --daemonize --port 80
```

### Mounting Under a Rails App

If you'd like to run this from inside an existing rails app, you can mount it as follows in `config/routes.rb`:

```ruby
match "/initials-avatar" => InitialsAvatar, :anchor => false
```

You can then access avatars at /initials-avatar/:initials from your rails app.


## Usage

Generate a 100x100 avatar for the initials *JD*:

```
http://localhost:9292/jd
```

Generate an 80x80 avatar for the initials *JS*:

```
http://localhost:9292/js?s=80
```

Show the [Gravatar](http://gravatar.com) for a particular user, and fallback to showing their initials (*JD*) if the Gravatar doesn't exist:

```
http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Fexample.com%2FJD
```


## TODO

-   Image caching
-   Font selection
-   Color selection
