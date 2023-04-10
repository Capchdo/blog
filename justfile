set windows-shell := ["pwsh", "-NoLogo", "-Command"]
set dotenv-load := true

python := env_var_or_default('PYTHON', 'python')
pip := python + " -m pip"
mkdocs := python + " -m mkdocs"

# List available recipes
@default:
    just --list

# Install/upgrade MkDocs, its plugins, and markdown extensions
bootstrap:
    {{ pip }} install mkdocs-material --upgrade
    {{ pip }} install mdx_truly_sane_lists mkdocs-rss-plugin mkdocs-git-revision-date-localized-plugin --upgrade

# Start the live-reloading docs server
serve *ARGS:
    {{ mkdocs }} serve {{ ARGS }}

# Build the docs site
build $CI="false":
    {{ mkdocs }} build

# Deploy to $DEPLOY_DST
deploy: (build "true")
    rsync --recursive --delete --checksum --human-readable --verbose ./site/ {{ env_var('DEPLOY_DST') }}
