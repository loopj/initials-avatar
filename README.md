Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback.

## Dependencies

This app requires ImageMagicks and Ghostscript to be available on your machine.

```shell
$ brew install imagemagick ghostscript
```

## Starting the Server

This app is built with Sinatra, so I recommend using the `rackup` command:

```shell
$ rackup
```

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
