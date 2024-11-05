### What is it?

This repo contains a bootstrap build of initial binaries. The build uses builder-hex0 as its build system and *theoretically* can be run on bare-metal. The only binary that's needs to be manually verified is the [`builder-hex0-x86-stage1.img`](https://github.com/oriansj/bootstrap-seeds/blob/86f50139da553e988533a738b78fb20951f1456d/NATIVE/x86/builder-hex0-x86-stage1.img "builder-hex0-x86-stage1.img") image.

### Run with Docker

```console
$ docker build -t bootstrap-init:latest .
$ docker run bootstrap-init:latest
```

Built binaries will be in newly created Docker Volume.

### Currently built here
- hex0-seed

### Future

While it is not main goal for now, for the purposes of building a fully trusted compiler verification system, it is necessary for the host operating system to be bootstrapped from a minimal seed too. We are currently keeping an eye on advances at [live-bootstrap](https://github.com/fosslinux/live-bootstrap) project. 