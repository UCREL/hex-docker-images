# hex-runtime
Docker base images for the Hex distributed compute system.

Mostly aimed at NLP tasks (for now), these images are designed to be a user-friendly baseline to build your code from, both locally and for Hex. 

See [the Packages page](https://github.com/orgs/UCREL/packages?repo_name=hex-app) for details.

## Why Use These Images?

As Hex develops, additional deployment-specific tools will be included into these images, giving you automatic access to them when your own images rebuild.
Without this, any additional tools/configurations/etc required for Hex will have to be manually installed and configured.

## Tags

---
### `spacy`
The [Spacy](https://spacy.io/) pipeline tools, along with Python 3 and associated tooling.

`docker pull ghcr.io/ucrel/hex-runtime:spacy`

---
### `spacy-gpu`
The [Spacy](https://spacy.io/) pipeline tools configured for GPU compute tasks, along with Python 3 and associated tooling.

`docker pull ghcr.io/ucrel/hex-runtime:spacy-gpu`
