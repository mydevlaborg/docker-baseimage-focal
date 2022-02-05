# An Ubuntu docker base image

Coming in at approx 231MB I am not so sure this can be called minimal, but it is smaller and more suited than many similar images.

I would prefer to use a much smaller Alpine based image but have not yet done enough testing with mono based builds and applications to use it in production. So for now I continue to use an Ubuntu based image

# Reorganization

This project was created as a fork of the original [Phusion baseimage-docker](https://github.com/phusion/baseimage-docker) project. I wanted to retain any history as well as ensure to give them credit for their great work.

Once forked I did some rearranging and cleanup to suit my own needs. I also moved their original license file into the baseimage folder since my changes to that folder don't substantially change their work. The added README file in that folder better summarizes my modifications, and the git history tracks any actual changes.

# Build

I use a Makefile to help handle the build, as an easier way to ensure everything is done in a consistent manner.

Although there are minimal options, basic usage help is available with the following

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