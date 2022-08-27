# dblstd-action

A simple GitHub action for [dblstd](https://github.com/sethbonnie/dblstd) that checks that your repo conforms to standards.


## Usage

Add the action `zikani03/dblstd-action@v1` to your workflow steps.
This will run the dblstd binary in your repo, it will specifically 
look for a file named `.dblstd` which contains the [Shape file](https://github.com/sethbonnie/dblstd) specification. 

You can specify a custom file path using `with.shapeFile`

```yaml
name: ci
on:
  push:
    branches: [ main ]
jobs:
  build:
    name: test-action
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: zikani03/dblstd-action@v1
        with:
            # Custom path to the shapefile definition
            shapeFile: "./.github/dblstd"
```