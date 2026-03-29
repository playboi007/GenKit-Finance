# ==============================================================================
# Flutter Project Makefile
# Use: make <target>
# ==============================================================================

# --- Variables ---
# Make shell commands fail immediately if any command fails
SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -e -o pipefail -c

.DEFAULT_GOAL := help

# --- Helper Targets ---

help: ## Display this help message.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: setup pub_get clean format test run run-release build-apk build-ios build-web gen-l10n gen-code

# --- Core Development Targets ---

setup: pub_get ## Run initial project setup (pub get).
	@echo "✅ Setup complete."

pub_get: ## Run 'flutter pub get' to fetch dependencies.
	@echo "--- Fetching Dependencies ---"
	flutter pub get

clean: ## Run 'flutter clean' to remove build artifacts.
	@echo "--- Cleaning Project ---"
	flutter clean

format: ## Run 'flutter format .' to format all Dart code.
	@echo "--- Formatting Code ---"
	flutter format .

test: ## Run 'flutter test' to execute all unit and widget tests.
	@echo "--- Running Tests ---"
	flutter test

run: ## Run the app on the connected device or emulator.
	@echo "--- Running Application ---"
	flutter run -d chrome

run-chrome: ## Run the app on chrome browser.
	@echo "--- Running Application in chrome ---"
	flutter run -d chrome

run-release: ## Run the app in release mode on the connected device.
	@echo "--- Running Application (Release) ---"
	flutter run --release

# --- Build Targets ---

build-apk: ## Build a release APK for Android.
	@echo "--- Building Android APK (Release) ---"
	flutter build apk --release

build-ios: ## Build an IPA for iOS (requires setup and device/simulator).
	@echo "--- Building iOS App (Release) ---"
	flutter build ios --release --no-codesign

build-web: ## Build a production release bundle for the web.
	@echo "--- Building Web App (Release) ---"
	flutter build web --release

# --- Localization & Code Generation Targets (If applicable) ---

gen-l10n: ## Generate localization files based on arb files.
	@echo "--- Generating Localization Files ---"
	flutter gen-l10n
	
gen-code: ## Run code generation (e.g., Freezed, Riverpod, Moor) using build_runner.
	@echo "--- Running Build Runner ---"
	fvm flutter pub run build_runner build --delete-conflicting-outputs

analyze: ## Run Flutter analyzer
	@echo "--- Running Flutter Analyzer ---"
	flutter analyze

open-pub: ## Open pubspec.yaml
	@echo "--- Opening pubspec.yaml ---"
	open pubspec.yaml
