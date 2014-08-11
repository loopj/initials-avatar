Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback. For example:

## Usage

### Basic Usage

Generate a 100x100 avatar for the initials *JD*:

```
http://initials.me/jd
```

![Basic avatar](http://initials.me/jd)


### Specifying Size

Generate an 50x50 avatar for the initials *JS*:

```
http://initials.me/js?s=50
```

![50x50 avatar](http://initials.me/js?s=50)


### Specifying Colors

Generate an avatar with custom foreground/background colors:

```
http://initials.me/js?s=50&fg=336699&bg=ffcc00
```

![Colored avatar](http://initials.me/yo?s=50&fg=336699&bg=ffcc00)


### Use as a Gravatar Fallback

Show the [Gravatar](http://gravatar.com) for a particular user, and fallback to showing their initials (*JD*) if the Gravatar doesn't exist:

```
http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Finitials.me%2FJD
```



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
