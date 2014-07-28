Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback. For example:

![Example avatar](http://initials.me/jd)

Changing the background or foreground color is as easy as passing the values through the query string

![Example avatar](http://initials.me/jd?bg=SkyBlue&fg=White)

You can even use the hex colors just remember to omit the '#' sign

![Example avatar](http://initials.me/jd?bg=87CEEB&fg=FFF)

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

You can run this in production using [Docker](https://docker.com) as follows:

```shell
$ docker pull loopj/initials-avatar
$ docker run -p 80:80 loopj/initials-avatar
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
http://initials.me/jd
```

Generate an 80x80 avatar for the initials *JS*:

```
http://initials.me/js?s=80
```

Show the [Gravatar](http://gravatar.com) for a particular user, and fallback to showing their initials (*JD*) if the Gravatar doesn't exist:

```
http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Finitials.me%2Fjd
```


## TODO

-   Image caching
-   Font selection
