TESTS=abicompat-underlink abicompat-backcall abidiff-exception abicompat-exception

.PHONY: all clean test $(TESTS)

# ------ TESTS ------
test: $(TESTS)

# -- underlink tests
# This should work
abicompat-underlink: ../tests/libunderlink1.so
	@./abicompat-underlink.sh

abicompat-backcall: ../tests/underlinktest ../tests/libunderlink1.so \
		../tests/libunderlink2.so
	@./abicompat-backcall.sh

# -- exception handling tests
abidiff-exception: ../tests/librttiexcep_v1.so ../tests/librttiexcep_v2.so
	@./abidiff-exception.sh

abicompat-exception: ../tests/use-rtti-excep ../tests/librttiexcep_v1.so ../tests/librttiexcep_v2.so
	@./abicompat-exception.sh
# ------ Other ------
clean:
	rm -f *~
