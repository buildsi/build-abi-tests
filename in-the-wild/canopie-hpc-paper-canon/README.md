# A Case for Portability and Reproducibility of HPC Containers

This paper might have good use cases / examples of ABI compatibilities, or buckets of things that we can look at.


1. Question: can there be ABI compatibility issues that only arise when something has been running for a long period of time (e.g., uses more memory/resources or something changes)?

## 1. ABI Issue: Linking Libraries / Pulling in Features from Host to Container

> Typical container solution requires mapping in libraries, which can cause host-to-container incompatibilities.

> A method that has been adopted in most of the HPC-centric container runtimes is to use a combination of bind mounts and dynamic linking to inject optimized libraries from the host into the runtime environment. A common example is MPI applications, which require libraries that have been optimized
for the target interconnect. It has been standard practice to include optimized MPI libraries for HPC interconnects for over a decade, with examples including CrayMPI, IntelMPI, MVAPICH, and more.

> The HPC container runtime will bind mount the optimized version of the libraries into the container at runtime and force the MPI application to use these libraries in exchange for the versions present in the image (such as a default MPICH installation). This can be done by two ways. The first method is to directly bind mount over the library in the image. For our MPI example, this means overlaying libmpi.so and any other necessary libraries. The other method includes bind mounting all libraries into a separate directory (eg: /host and modifying LD LIBRARY P AT H to prepend that directory. 

**Test idea**: we need to be able to understand the implications of each of the cases of binding directly over vs. changing `LD_LIBRARY_PATH`. I think first we'd want to:
 - make a simple script that will use the mpi library
 - for each of the scenarios above, given this script in the container, do a trace to be able to write down everything that it "sees"
 - based on what it sees (host and inside container) Smeagl-ize it. Are there differences between bind mount vs. changing the path? Is one better than the other?
 - rinse and repeat with a similar case but using GPUs

> For OpenMPI [12], [13], the user must either know the build configuration to match the target machine in advance of the build or leverage an exact module of OpenMPI which is compatible between versions, as well as all of OpenMPI’s RPATH dependencies.

Ah, so we probably care most about OpenMPI, but it would be interesting to find issues in other MPI libraries that are supposedly ABI compatible.

> glibc from the host could be either significantly older or newer than that in container images. This variation in core system libraries
can introduce symbol mismatches between the glibc version in the container and the version used to compile the injected libraries.

An example:

> A recent major OS update on Cray systems included updated MPI libraries and its dependencies that were built against glibc 2.26 from SuSE SLES15. Trying to inject these optimized MPI libraries into older container images, such as Centos7 images with glibc 2.17, would fail in Shifter.

So underlying a lot of these linking errors could just be glibc.

## 2. ABI Issue: Different Architectures

This could possibly just be a check with archspec (or containerspec version of it!).
Even if something "works" there could be changes in performance.

## 3. ABI Issue: Specialized Interconnects and Libraries 

From the paper:

> HPC applications need to use specialized interconnects & libraries not found or optimized for in base OS packages.

Specific examples?

> there are several new and emerging interconnect standards with libfabrics, UCX, and Portals-compliant interfaces; many of which are likely to be deployed across leadership supercomputing facilities. Each interconnect will likely outlive any given OS distribution release and dependency library mismatches are almost guaranteed over time

## 4. ABI Issue: GPUs and Accelerators

> There are differing methodologies in container runtimes for incorporating GPUs and accelerators.

> Each device will require custom and often proprietary libraries that will need to be managed explicitly between the host and the container. Such accelerator libraries may be even be tied to specific driver and firmware versions which are specific to a particular facility deployment.


## Vanessa Thinking

If we are to have some OCI compliant hook that looks for labels, we'd want an automated way to derive them.
So I think the approach of doing some kind of trace for the likely entrypoints / use cases of the container makes sense.
We can derive a list of things we find, and then dualy create labels and do some kind of ABI-compat solve.
