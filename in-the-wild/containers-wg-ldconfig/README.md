# ldconfig issue

This was reported in the Containers Working Group by Shane Canon at Nersc.

> I'm seeing an issue that I haven't run across before.  I'm still trying to diagnose it.  I have an image from a user (built off of a recent miniconda image) that has an ldconfig  that appears to be incompatible with the host system.  It will immediately segfault.  It is statically linked and I've extracted it from the image and get the same segfault behavior outside the container.  The host system has a 4.12 kernel.  So not super new but not ancient.   Has anyone else run across something like this?

There is a report of a similar issue / segfault [in this issue](https://github.com/hpc/charliecloud/issues/1005) for Charliecloud.
And this seems like a general strategy we could try:

> I'm testing a workaround by grabbing a ldconfig from a different image and replacing it. This is effecting python because it does a ldconfig -p to discover libraries.

And the result of that:

> So the workaround worked.  I think Ubuntu must be building glibc with some option that makes it less backwards compatible.

And the workaround was:

> Not quite that.  I extracted the ldconfig from a centos:8 and put it in debian 10 based image.  That seemed to do the trick at least for this image and the test.

This is the strace (from Reid) leading up to the failure:

```
execve("/sbin/ldconfig.real", ["/sbin/ldconfig.real"], 0x55555557c858 /* 421 vars */) = 0
arch_prctl(0x3001 /* ARCH_??? */, 0x7fffffff6e20) = -1 EINVAL (Invalid argument)
brk(NULL)                               = 0x2aaaaabad000
brk(0x2aaaaabae1c0)                     = 0x2aaaaabad000
--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0xffffffffffffffc0} ---
+++ killed by SIGSEGV +++
Segmentation fault
```

The ldconfig in question is in this folder, and downloaded from [here](https://portal.nersc.gov/project/das/canon/ldconfig).
The bug can be reproduced running this on the system where the container was (without the container). More notes from Hunter about
the issue:

> I first bumped into this issue about 2 years ago on our local XC that was running CLE6 at the time. Some notes:
> Only occured on the compute nodes which were running a different kernel than the login node
> The compute node kernel was 4.4.103-6-38_4.0.153-cray_ari_c at the time of testing
> I saw it with a Debian 10 and Fedora 3x (don't have notes) images
> I tried to reproduce with a SLES 12 system and was unable to
> the ldconfig in question segfaulted outside of the container as well
> I created a Cray case at the time but didn't get much traction and it was closed once we upgraded the system to CLE7. (edited) 


Looking into this locally and I can reproduce on our XC40 again. Something I noticed was that the stack size on the compute node was set to unlimited, setting it to 8192 prevented the segfault.

```
heasterday@nid00092:~> ./ldconfig 
Segmentation fault (core dumped)
heasterday@nid00092:~> ulimit -s 8192
heasterday@nid00092:~> ./ldconfig 
./ldconfig: Can't create temporary cache file /etc/ld.so.cache~: Permission denied
```

It's worth noting that setting the stack limit to unlimited still doesn't allow me to reproduce on any other platforms. I would be curious if this behavior is replicated in your environments.
