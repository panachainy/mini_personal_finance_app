.PHONY: build-runner clean watch

build-runner:
	flutter pub run build_runner build

clean:
	flutter pub run build_runner clean

watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

build-android:
	flutter build apk

build-ios:
	flutter build ios

build: build-android build-ios
