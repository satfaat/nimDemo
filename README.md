# nimDemo


```bash
# install on windows
scoop install nim
scoop install mingw  # gcc compiler

# check
nin --version
gcc --version

# help
nim --help
nim --advanced
```

# to compile progrm `nim c testOutput.nim`
# to compile and run program `nim c -r testOutput.nim`

## nimble pm

```bash
nimble refresh
nimble search csv
```

## happyx

```bash
nimble install happyx@#head

# usage
hpx create --name ssr_demo --kind SSR

# run
nim c -r -d:debug main
```