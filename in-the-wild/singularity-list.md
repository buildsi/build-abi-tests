# Singularity List

These are notes from the Singularity list that either include details or general
descriptions of issues that might be related to ABI compatibility.

## Singularity and OpenMPI

This is going to include a bunch of different threads, as it was a common problem

[singularity 2.1/2.2 and OpenMPI 3.0.0a1](https://groups.google.com/a/lbl.gov/g/singularity/c/_4nvPJ_YF2Y)
[centos 6 and OpenMPI](https://groups.google.com/a/lbl.gov/g/singularity/c/5l6ChRTg1Mk): openssh dependency problem?
[general notes on using mpi](https://groups.google.com/a/lbl.gov/g/singularity/c/IKXSGrgSEzk)
[An error occurred on MPI_Init on a NULL communicator, MPI_ERRORS_ARE_FATAL](https://groups.google.com/a/lbl.gov/g/singularity/c/VcXQMtghTyI) and again [here](https://groups.google.com/a/lbl.gov/g/singularity/c/5xmZOnPiZ4c)
[Suggestion to embed specifics in "header"](https://groups.google.com/a/lbl.gov/g/singularity/c/0n6tps7OEro)
[Different versions](https://groups.google.com/a/lbl.gov/g/singularity/c/Afid1CB1k8g)

## Targeted Binaries

[thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/iWOx9PMvPzo) (not directly related but I mention it to debug)
[thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/RwhVjKDb3VM) this exact issue with numpy import

This is a softer issue, but often the container will target "python" and get the host python instead. I think
some kind of trace would be able to see this, given that the host python is found (and it's the wrong version).
We could come up with some simple example of using python 2 vs. 3 for this.

## Centos 7.2 and MVAPICH2 in SAPP

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/fsCO1_StjjA)

> It started to work only when I added these packages to bundle: libibverbs, libmlx5 and libmlx4 (maybe will be useful for someone). It seems Singularity bundle should contain OFED drivers by some reason in that case. Would be nice to get integration with Singularity similar to Open MPI. 


Perhaps we could detect that the additional libraries were needed (or something missing) before hand? And a cool related question -
if we identify a symbol is missing can we look it up and make a suggestion for what to bind or install?

## Singularity 2.2 on Centos 5

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/GDRxEnxLcS0)

It looks like there was some issue with a missing symbol:

```
sexec.c:455: error: 'MS_SLAVE' undeclared (first use in this function) 
```

## Nemo benchmark (MPI PMI-2 job) with slurm 16.05 and pmi2

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/vjCZoR8VbXk)

This one is interesting because it seems to work running locally, but not with slurm

## Overlayfs

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/IpXLwNBTDpg)

It was historically a common issue that binds in the container need to be created beforehand, given that there wasn't overlayfs. I think it's more common to have this now,
but it would still be nice to have a way to check before doing it.

## Compression not available

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/pceVbKs1TLs)

E.g., installing scientific linux with singularity it fails because xz compression is not available. This has me wonder about the ABI compatibiltiy (or more generally needs) of the container to run on the host. Something about this particular recipe required this xz library and it wasn't there.

## Audio / Video Drivers

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/n5ks7C3AD-g)

Perhaps some test related to compatibility of these drivers?

## NO_NEW_PRIVS detected when it should not be

[thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/jRYDQa0wyqk)
[thread 2 on RHEL 6.6](https://groups.google.com/a/lbl.gov/g/singularity/c/S2WaCngE7M8)

This looks like an issue with Singularity 2.x and an older kernel.

## Kernel and RHEL issues

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/7zYFRGtkq88)

## Containers build with different container tech than on host

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/xnuchj_Nw8c)

There could be an incompatibility just because of building with a different container version
than is on the host. In this case, we'd need to check the version of the container against that on
the host (another layer it seems).

## Container cannot find GPU

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/CezfXNjLGe0)

## Incompatibility with CUDA

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/VFY-uAZlHr8)

And

> The only thing that will not work with this scheme is if you have a host system with an outdated driver and you try to run a container with the latest greatest CUDA installed in it.  That ain't gonna work.  But I have no idea how you could make that work.  The NVIDIA driver installs kernel modules.  So unless we are going to start running containers with their own kernels (VMs) I don't see how to make this solution any more portable. 

from [this thread](https://groups.google.com/a/lbl.gov/g/singularity/c/I4urzlDGQtA)

## Incompatibility with rpm database

[thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/8gtPRG74zFU)
[thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/gb-m2sjOLkM)

This looks like there is a newer version of BDB on the host than in the container - this seems like "classic Smeagle" or something that it should be able to detect
given that we know the database is an important thing.

## timezone compatibility

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/YWFspd3A_sg)

_why is it always time zones..._

## vsyscall=emulate required to use centos6

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/PWv0HeuZKN8)

## Recompiled on Broadwell

[thread](https://groups.google.com/a/lbl.gov/g/singularity/c/p28jx5hy5ug)

This might be more of a "soft" issue, but if code can be compiled on Broadwell and get faster times, we should minimally know about this and be able to tell the running-thing
that the optimization is there. This is more container ABI than general ABI, but I want to write it down.

**being written!!** I still have like 1K posts to go through and thousands of issues. May the force be with me.
