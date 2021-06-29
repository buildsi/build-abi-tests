.PHONY: all clean test run-underlinktest abicompat-underlink abicompat-backcall \
	swap-underlinked

# ------ TESTS ------
test: run-underlinktest abicompat-underlink abicompat-backcall swap-underlinked

run-underlinktest: ../tests/underlinktest
	@./underlinktest.sh

swap-underlinked: ../tests/underlinktest ../tests/libunderlink1.so \
		../tests/libunderlink2.so ../tools/swap-libs-audit.so
	@./swap-underlinked.sh

abicompat-underlink: ../tests/libunderlink1.so
	@./abicompat-underlink.sh

abicompat-backcall: ../tests/underlinktest ../tests/libunderlink1.so \
		../tests/libunderlink2.so
	@./abicompat-backcall.sh


# ------ Other ------
clean:
	rm -f *~ *.o *.so underlinktest
