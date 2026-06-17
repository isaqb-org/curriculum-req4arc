# Makefile for the iSAQB "Requirements for Architects" curriculum.
# Runs the curriculum-builder container directly (no wrapper script).
#
# Each language target is a single `docker run` that builds both formats
# (PDF + HTML). Run `make` (or `make help`) for the list of targets.

# Pinned builder image — see https://github.com/isaqb-org/curriculum-builder
IMAGE  := ghcr.io/isaqb-org/curriculum-builder:2026.2-rev4
DIGEST := sha256:0367c56f3b25666594d560c48a4221e42f243aabfb6c32a8f1ae5bff6c6a4b85
REF    := $(IMAGE)@$(DIGEST)

BUILD_DIR := build

# Mount the repo at /project and run as the current user so output is owned by us.
# CURRICULUM_FILE / PREPRESS etc. are read from build.config inside the container;
# we only override LANGUAGES per target. Its order also decides the language of the
# shared index.html (rendered once per language during HTML builds — last one wins),
# so "DE EN" yields an English index.
DOCKER_RUN = docker run --rm \
	-u "$$(id -u):$$(id -g)" \
	-v "$(CURDIR):/project" -w /project

.DEFAULT_GOAL := help

.PHONY: all DE EN clean help

all: ## Build both languages (DE + EN), PDF + HTML
	$(DOCKER_RUN) -e LANGUAGES="DE EN" $(REF)

DE: ## Build German, PDF + HTML
	$(DOCKER_RUN) -e LANGUAGES="DE" $(REF)

EN: ## Build English, PDF + HTML
	$(DOCKER_RUN) -e LANGUAGES="EN" $(REF)

clean: ## Remove the build/ output directory
	rm -rf $(BUILD_DIR)

help: ## Show this help
	@echo "iSAQB curriculum build — usage: make <target>"
	@echo
	@echo "Targets:"
	@grep -E '^[a-zA-Z][a-zA-Z0-9_-]*:.*## ' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*## "}; {printf "  \033[36m%-8s\033[0m %s\n", $$1, $$2}'
