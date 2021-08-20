# Singularity List

These are notes from the Singularity list that either include details or general
descriptions of issues that might be related to ABI compatibility.

## OpenBLAS shared library not used

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/HDnWX-gHa5w)

This looks like the compiled library in the container was not being used, and the solution
was to replace it with another library. This seems like something Smeagle should be able to detect,
only given that the library symbols are required/needed and not found.

## Missing Bind Path

Can we tell if something that needs to be bound is missing?

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/hHe8crgc42k)

## Singularity and OpenMPI

This is going to include a bunch of different threads, as it was a common problem

- [OpenMPI, SLURM, and portability](https://groups.google.com/a/lbl.gov/g/singularity/c/lQ6sWCWhIWY)
- [Singularity, OpenMPI and SLURM](https://groups.google.com/a/lbl.gov/g/singularity/c/MXB3iVbLe2Q)
- [Same as above, but focus on performance costs](https://groups.google.com/a/lbl.gov/g/singularity/c/5HlJ6aQUtoI)
- [singularity 2.1/2.2 and OpenMPI 3.0.0a1](https://groups.google.com/a/lbl.gov/g/singularity/c/_4nvPJ_YF2Y)
- [centos 6 and OpenMPI](https://groups.google.com/a/lbl.gov/g/singularity/c/5l6ChRTg1Mk): openssh dependency problem?
- [general notes on using mpi](https://groups.google.com/a/lbl.gov/g/singularity/c/IKXSGrgSEzk)
- [An error occurred on MPI_Init on a NULL communicator, MPI_ERRORS_ARE_FATAL](https://groups.google.com/a/lbl.gov/g/singularity/c/VcXQMtghTyI)
 - Again [here](https://groups.google.com/a/lbl.gov/g/singularity/c/5xmZOnPiZ4c)
 - and again [here](https://groups.google.com/a/lbl.gov/g/singularity/c/jvZQx5HGvkY)
 - and again [here](https://groups.google.com/a/lbl.gov/g/singularity/c/k2jPS2-_XBA)
- [Suggestion to embed specifics in "header"](https://groups.google.com/a/lbl.gov/g/singularity/c/0n6tps7OEro)
- [Different versions](https://groups.google.com/a/lbl.gov/g/singularity/c/Afid1CB1k8g)
- [Slurm and PMIx](https://groups.google.com/a/lbl.gov/g/singularity/c/EaqG0IEExN0)
- [Fluent and MPI](https://groups.google.com/a/lbl.gov/g/singularity/c/HUsZF9_B29c)
- [Singularity with OpenMPI 2.1/Centos 7, issue with GPFS linking](https://groups.google.com/a/lbl.gov/g/singularity/c/Zy0GPvzBsUI)
- [NAS Parallal Benchark fail](https://groups.google.com/a/lbl.gov/g/singularity/c/MCUQLVUFixc)
- [OpenFoam](https://groups.google.com/a/lbl.gov/g/singularity/c/hKgAbfSZCaY)

## General MPI

- This [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/50AhKYYQZVc) has a few useful links to examples and documentation
on [ompi container versioning](https://github.com/open-mpi/ompi/wiki/Container-Versioning).
- [libfabric or ucx](https://groups.google.com/a/lbl.gov/g/singularity/c/GkI_80XysD4) could be useful to test.
- [MVAPICH](https://groups.google.com/a/lbl.gov/g/singularity/c/A6I5mZxnmFU) and [another](https://groups.google.com/a/lbl.gov/g/singularity/c/X3TEGPnGuO8)
- [MPIRUN or srun](https://groups.google.com/a/lbl.gov/g/singularity/c/MqYqJVe3fH4) and reference to Charliecloud
- [Parallel Python](https://groups.google.com/a/lbl.gov/g/singularity/c/G0L0QC2Bleg)
- [MPI 2019](https://groups.google.com/a/lbl.gov/g/singularity/c/e91Wl95M0pM)
- [Segfault on upgrade](https://groups.google.com/a/lbl.gov/g/singularity/c/-yV29brRsgM)
- [CodeAster](https://groups.google.com/a/lbl.gov/g/singularity/c/XgerHAiCzYk)
- [No openfabrics](https://groups.google.com/a/lbl.gov/g/singularity/c/GmVgOWz5lLY)
- [Rpmi](https://groups.google.com/a/lbl.gov/g/singularity/c/r2uQfME7esQ)

This is a nice post from [Reid @ LANL](https://reidpr.gitlab.io/best-practices/new-stuff.html#mpi-issues) that summarizes different MPI strategies.

## Cannot find ld

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/aW_-Bcf__hw)

I know this is an issue on alpine, but not sure if that's relevant here. Either way, it's needed and not found.

## MPICH

- [MPICH using LD_AUDIT](https://github.com/hpcng/singularity/issues/876) (GitHub issue)

## Intel MPI

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/rhjVSVxR6G0)

## OpenGL

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/F1mMAU2ex9M): lots of `LD_PRELOAD` things... cannot be loaded!
- [OpenGL rendering using Nvidia gpus and EGL libs](https://groups.google.com/a/lbl.gov/g/singularity/c/7Q2AcgZnvUA)
- [Cannot find system OpenGL Library](https://groups.google.com/a/lbl.gov/g/singularity/c/BNJfEbcDBvA)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/wK4MliObr-Q)

## Star-CMM

This seems to be an MPI issue, but not necessarily OpenMPI.

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/Au4M4cHGtTc)

## Performance Differences

These may not be considered ABI breaks, but if performance is significantly different we might want to label these as "soft" ABI issues.

- [SGEMM and DGEMM drop in performance](https://groups.google.com/a/lbl.gov/g/singularity/c/KmteMm3h9S4)

## Singularity and Infiniband

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/pbSfJVS8qj4)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/xUYb2v2iaKY)
- [thread 3](https://groups.google.com/a/lbl.gov/g/singularity/c/21XzcYuJ63Q)
- [thread 4](https://groups.google.com/a/lbl.gov/g/singularity/c/4Ce8oCOPKlI)

We could try with and without the internal needed libraries, and we'd want to 1. be able to predict that the container won't work, and 2. tell the user what is needed to make it work.

## Instruction Sets

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/fGfrdzawGEA)

This user built the container on a processor that supports SSE4 and then expects it doesn't work on SSE2.

## ProbtrackX

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/9aZa0tKdEKI)

This is a classic "cannot find this library" that should be detectable by Smeagle if symbols are missing.

## Networking

At runtime, we can probably deduce what ports are exposed, and which are running some service in the container. So if we have an application that expects something to run on a port, maybe there is a way to check this? The stupidest way to do it is to run the thing, check if the port is viewable by the host, and if not do further inspection in the container. More detailed looking would probably mean looking at networks in the container or even trying to statically discover and parse config files. Of course
this would work for only config files that we can figure out the paths for, but it's an idea.

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/znwthR5K0dA)

## Targeted Binaries


- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/iWOx9PMvPzo) (not directly related but I mention it to debug)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/RwhVjKDb3VM) this exact issue with numpy import

This is a softer issue, but often the container will target "python" and get the host python instead. I think
some kind of trace would be able to see this, given that the host python is found (and it's the wrong version).
We could come up with some simple example of using python 2 vs. 3 for this.

## Centos 7.2 and MVAPICH2 in SAPP

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/fsCO1_StjjA)

> It started to work only when I added these packages to bundle: libibverbs, libmlx5 and libmlx4 (maybe will be useful for someone). It seems Singularity bundle should contain OFED drivers by some reason in that case. Would be nice to get integration with Singularity similar to Open MPI. 


Perhaps we could detect that the additional libraries were needed (or something missing) before hand? And a cool related question -
if we identify a symbol is missing can we look it up and make a suggestion for what to bind or install?

## Singularity 2.2 on Centos 5

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/GDRxEnxLcS0)

It looks like there was some issue with a missing symbol:

```
sexec.c:455: error: 'MS_SLAVE' undeclared (first use in this function) 
```

## PR_SET_NO_NEW_PRIVS

This looks like something adding to the kernel in RHEL after 6. It probably is more a container run time issue than an ABI one we can predict beforehand, and less about software in the container and more about the container technology and host/kernel.

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/PCCS2qCFjF4)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/fa2GMFG9iTY)

And then NO_NEW_PRIVS detected when it should not be

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/jRYDQa0wyqk)
- [thread 2 on RHEL 6.6](https://groups.google.com/a/lbl.gov/g/singularity/c/S2WaCngE7M8)

This looks like an issue with Singularity 2.x and an older kernel.

## Nemo benchmark (MPI PMI-2 job) with slurm 16.05 and pmi2

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/vjCZoR8VbXk)

This one is interesting because it seems to work running locally, but not with slurm

## Overlayfs

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/IpXLwNBTDpg)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/YLP-gkiji80): kernel that doesn't support it.

It was historically a common issue that binds in the container need to be created beforehand, given that there wasn't overlayfs. I think it's more common to have this now,
but it would still be nice to have a way to check before doing it.

## Compression not available

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/pceVbKs1TLs)

E.g., installing scientific linux with singularity it fails because xz compression is not available. This has me wonder about the ABI compatibiltiy (or more generally needs) of the container to run on the host. Something about this particular recipe required this xz library and it wasn't there.

## Audio / Video Drivers

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/n5ks7C3AD-g)
- [NGC pytorch needing display (not found)](https://groups.google.com/a/lbl.gov/g/singularity/c/SASPAdPt2Jc)

Perhaps some test related to compatibility of these drivers?

## Kernel and RHEL issues

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/7zYFRGtkq88)
- [container built centos 7 cannot run centos 5](https://groups.google.com/a/lbl.gov/g/singularity/c/uBWTYJIvWFg)
- [build fails as SGE job centos upgrade](https://groups.google.com/a/lbl.gov/g/singularity/c/X6Q-IsNQh-k)
- [fake Kernel inside container](https://github.com/hpcng/singularity/issues/4109) (GitHub issue)
- [kernel to old](https://github.com/hpcng/singularity/issues/1275) (GitHub issue)

## Containers build with different container tech than on host

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/xnuchj_Nw8c)

There could be an incompatibility just because of building with a different container version
than is on the host. In this case, we'd need to check the version of the container against that on
the host (another layer it seems).

## Container cannot find GPU

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/CezfXNjLGe0)
- [caffee-nv benchmark](https://groups.google.com/a/lbl.gov/g/singularity/c/Clm4pL6UyPI) could be useful to compare in different scenarios
- [TRINITY (bioinformatics)](https://groups.google.com/a/lbl.gov/g/singularity/c/m9_JEOTQRC0)
- [libGL error, failed to load swrast driver](https://groups.google.com/a/lbl.gov/g/singularity/c/jkR9I7tET7w)
- [NVIDIA-SMI](https://groups.google.com/a/lbl.gov/g/singularity/c/b4VSGzyIulc)

## Filesystems

- [segfault with NFS](https://groups.google.com/a/lbl.gov/g/singularity/c/3e1iRMBeP60)

## Incompatibility with CUDA

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/VFY-uAZlHr8)
- [CUDA_ERROR_UNKNOWN](https://groups.google.com/a/lbl.gov/g/singularity/c/CQvDbqiZv4U)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/iU8xH8ybBAE)
- [tensorflow](https://groups.google.com/a/lbl.gov/g/singularity/c/Isg2Pledkuw)
- [performance issue with GPU](https://groups.google.com/a/lbl.gov/g/singularity/c/3zns60lZlL0)

And

> The only thing that will not work with this scheme is if you have a host system with an outdated driver and you try to run a container with the latest greatest CUDA installed in it.  That ain't gonna work.  But I have no idea how you could make that work.  The NVIDIA driver installs kernel modules.  So unless we are going to start running containers with their own kernels (VMs) I don't see how to make this solution any more portable. 

from [this thread](https://groups.google.com/a/lbl.gov/g/singularity/c/I4urzlDGQtA)

## Incompatibility with rpm database

- [thread 1](https://groups.google.com/a/lbl.gov/g/singularity/c/8gtPRG74zFU)
- [thread 2](https://groups.google.com/a/lbl.gov/g/singularity/c/gb-m2sjOLkM)

This looks like there is a newer version of BDB on the host than in the container - this seems like "classic Smeagle" or something that it should be able to detect
given that we know the database is an important thing.

## timezone compatibility

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/YWFspd3A_sg)

_why is it always time zones..._

## vsyscall=emulate required to use centos6

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/PWv0HeuZKN8)
- [GitHub issue](https://github.com/hpcng/singularity/issues/845)

## Recompiled on Broadwell

- [thread](https://groups.google.com/a/lbl.gov/g/singularity/c/p28jx5hy5ug)

This might be more of a "soft" issue, but if code can be compiled on Broadwell and get faster times, we should minimally know about this and be able to tell the running-thing
that the optimization is there. This is more container ABI than general ABI, but I want to write it down.

**Updated August 20, 2021** with all of the Singularity Google group, and a few extra additions from Containers-wg slack.
We can further add to this with GitHub issues if we decide this is a good approach.
