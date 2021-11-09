# clang-format-fixer

Create a `clang-format-fixer.yml` file in `.github/workflows/`.
Paste this code into the file:

```yml
name: clang-format-fixer
on: push
jobs:
  lint:
    name: clang-format-fixer
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: aMahanna/clang-format-fixer@v1.0.0
        with:
          sources: "src/*.cpp,src/*.h"
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
