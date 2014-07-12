Initials Avatar
---------------

Generate an avatar image from a user's initials, ideal for use as a meaningful gravatar fallback.

## Dependencies

This app requires ImageMagicks and Ghostscript to be available on your machine.

```shell
brew install imagemagick ghostscript
```

## Usage

-   Generate a 100x100 PNG initials avatar for the initials *JD* as follows:

    ```
    http://example.com/jd
    ```

-   Generate an initials avatar with a specific size:

    ```
    http://example.com/jd?s=80
    ```

-   Use initials as a fallback for Gravatar:

    ```
    http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Fexample.com%2FJD
    ```

## TODO

-   Image caching
-   Font selection
-   Color selection
