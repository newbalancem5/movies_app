# Remove pubspec.lock and .packages
.PHONY: reset_pub
reset_pub:
	@echo "Removing pubspec.lock and .packages..."
	@rm -f pubspec.lock
	@rm -f .packages
	flutter clean

# Full clean
.PHONY: full_clean
full_clean: clean reset_pub
	@echo "Performing full clean...🧹"

# Install dependencies
.PHONY: install
install:
	@echo "╠ flutter pub get 🧱"
	flutter pub get

# Clean project
.PHONY: clean
clean:
	@echo "╠ flutter clean 🧹"
	flutter clean

# Run in release mode
.PHONY: run_release
run_release:
	@echo "╠ flutter run --release"
	flutter run --release

# Generate code with freezed
.PHONY: build_runner
build_runner:
	@echo "╠ flutter pub run build_runner build --delete-conflicting-outputs"
	flutter pub run build_runner build --delete-conflicting-outputs
