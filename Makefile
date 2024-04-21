build-MyAppFunction:
	nimble build -d:release
	strip -s bin/bootstrap
	cp bin/bootstrap $(ARTIFACTS_DIR)
