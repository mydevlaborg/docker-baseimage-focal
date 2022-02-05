# An Ubuntu docker base image

Coming in at approx 231MB I am not so sure this can be called minimal, but it is smaller and more suited than many similar images.

# Build

I use a Makefile to help handle the build, as an easier way to ensure everything is done in a consistent manner.

You can get help for the make options with the following

```bash
make help
```

To build the image simply execute the following

```bash
make image
```

To run a scan for known vulnerabilities on the created image execute the following

```bash
make scan
```
