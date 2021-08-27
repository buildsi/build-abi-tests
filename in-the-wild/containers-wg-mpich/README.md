# Mpich and Sarus

This is a story of ABI compatibility (or not) from Tomas Allaga on the Supercontainers Slack.

## Too Long, Didn't Read

> Yes, we've had issues with [Sarus](http://sarus.readthedocs.io/) users not being able to run their MPI containerized workflows because our ABI compatibility checks were "too strict." The original [checks](https://sarus.readthedocs.io/en/latest/user/abi_compatibility.html) were based on the original description of the [ABI compatibility initiative[](https://wiki.mpich.org/mpich/index.php/ABI_Compatibility_Initiative), which unfortunately no longer seems much active.

A good read is [this paper](https://www.computer.org/csdl/proceedings-article/canopie-hpc/2020/306200a035/1pK4QKnP3k4) from SC20 by Joshua Hursey. It comments on his experience and ABI-related pain points.

## The Longer Story

> Back in 2019, as a new Sarus developer at CSCS, I received a ticket of a user container no longer being able to run their containerized MPI workflow. I knew that by implementation design, Sarus leverages on the ABI initiative and turns to library ABI strings to decide if an MPI lib (and its deps) are replaceable or not.

> This compatibility is usually one-way, so the libs in the container have to be compatible with those of the host.  We knew at the time MPICH 3.1.4 was abi-compatible with cray's implementation provided on the XC40 host. But a minor update on the user container to, say, 3.2.0, made strict checks fail and prevent the workflow from running, even if in practice the user app would've run just fine with accelerated performance.

> I started digging to understand this ABI compatibility initiative, and the claims on the ABI String Updates mentioned in the wiki, which it seemed were not being followed by all vendors as originally expected. Having a consistent naming respected by all vendors was a nice way to have a quick on-the-fly check on compatibility, but in practice it turns out it's hard to follow (like with SemVer), it's a human convention after all.

> The next best thing to have, we thought, would an automated way to test the matrix of combination of versions and vendors to validate compatibility. Digging the ABI compatibility wiki (through random pages no longer exposed) I found mentions of a test suite the initative had to check compatibility.  I imagine they'd rely on something like https://lvc.github.io/abi-compliance-checker/. I contacted Kenneth Raffenetti in early 2020 to ask more about this topic. He provided me a list of MPICH versions and their ABI strings, but couldn't do the same for other vendors. He also mentioned they were working on revamping the testing pipelines too, but since then I haven't heard any news.
