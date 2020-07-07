# SFN-Linter

Based on [statelint](https://github.com/awslabs/statelint), but without the complexity of the requirements.

This repository is responsible for generating docker images to allow using the statelint where ruby and gems are not first class citizens.

## Usage
docker -v $(pwd):/jsons drorasaf/sfn-linter /jsons/state-machine.json
