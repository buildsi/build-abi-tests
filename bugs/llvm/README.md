# Looking for Bugs

This is a small project to look into [this issue](https://lists.llvm.org/pipermail/llvm-dev/2021-September/152695.html)
and see if building two equivalent llvm's, but one with the correct register assignment rules
for the recursive process when classifying lo and hi, produces a compiler that generates
different binaries (I believe it should not if the detail truly does not matter).

For both, we will build side by side containers. The bug is in [this file](https://github.com/buildsi/llvm-bug/blob/main/llvm-project-fix/clang/lib/CodeGen/TargetInfo.cpp) and here is the diff between the "fix" (what I wrote) and the current implementation (at the time I cloned it). Here is the original (postMerge)

```cpp
  if (Hi == Memory)
    Lo = Memory;
  if (Hi == X87Up && Lo != X87 && honorsRevision0_98())
    Lo = Memory;
  if (AggregateSize > 128 && (Lo != SSE || Hi != SSEUp))
    Lo = Memory;
  if (Hi == SSEUp && Lo != SSE)
    Hi = SSE;
```
And what I changed it to, to reflect the ABI document (because they said if one OR the other).

```cpp
  if (Hi == Memory)
    Lo = Memory;
  if (Lo == Memory)
    Hi = Memory;
  if (Hi == X87Up && Lo != X87 && honorsRevision0_98())
    Lo = Memory;
    Hi = Memory;
  if (AggregateSize > 128 && (Lo != SSE || Hi != SSEUp))
    Lo = Memory;
    Hi = Memory;
  if (Hi == SSEUp && Lo != SSE)
    Hi = SSE;
```

Full details are in [github.com/buildsi/llvm-bug](https://github.com/buildsi/llvm-bug)
and the two subfolders here are additional tests I tried using those containers.
