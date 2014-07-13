Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback. For example:

![Example avatar](example.png)


## Dependencies

This app requires ImageMagick and Ghostscript to be available.

### Mac

```shell
$ brew install imagemagick ghostscript
```

### Ubuntu

```shell
$ sudo apt-get install ruby-dev imagemagick
```


## Installation

```shell
bundle install
```


## Starting the Server

This app is built with Sinatra, so I recommend using the `rackup` command:

```shell
$ rackup
```


## Mounting Under a Rails App

If you'd like to run this from inside an existing rails app, you can mount it as follows in `config/routes.rb`:

```ruby
match "/initials-avatar" => InitialsAvatar, :anchor => false
```

You can then access avatars at /initials-avatar/:initials from your rails app.


## Usage

-   Generate a 100x100 PNG initials avatar for the initials *JD* as follows:

    ```
    http://localhost:9292/jd
    ```

-   Generate an initials avatar with a specific size:

    ```
    http://localhost:9292/jd?s=80
    ```

-   Use initials as a fallback for Gravatar:

    ```
    http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Fexample.com%2FJD
    ```


## TODO

-   Image caching
-   Font selection
-   Color selection
