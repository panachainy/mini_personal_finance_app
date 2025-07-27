.PHONY: build-runner-build build-runner-clean build-runner-watch build-android build-ios build clean watch

# Build runner commands
br: build-runner-build
build-runner-build:
	flutter pub run build_runner build

br-clean: build-runner-clean
build-runner-clean:
	flutter pub run build_runner clean

br-watch: build-runner-watch
build-runner-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

# Platform builds
build-android:
	flutter build apk

build-ios:
	flutter build ios

# Build all platforms
build: build-android build-ios
