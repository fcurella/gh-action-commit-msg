# gh-action-commit-msg
GitHub action to extract the commit's message


## Example

```yml
jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - name: checkout
        uses: actions/checkout@v2
      - name: skip or not
        id: skipornot
        uses: fcurella/gh-action-commit-msg@main
      - name: 'Some other job'
        id: waitforstatuschecks
        if: ${{ !contains(steps.skipornot.outputs.message, 'skip ci') }}
        uses: "someuser/someimage"
```
