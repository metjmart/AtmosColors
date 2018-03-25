# AtmosColors

## Introduction

Specify a collection of RGB triplets that can be ingested through Julia and transformed into a colormap for use with PyPlot.

Operating Julia version: 0.6.0

## Package dependencies

The following packages should be installed prior to using JuliaMet:

* [Colors](https://github.com/JuliaGraphics/Colors.jl)
* [PyPlot](https://github.com/JuliaPy/PyPlot.jl)

This can be accomplished by opening the Julia REPL and running
```julia
Pkg.add("Package")
```
where "Package" is replaced by the package names listed above.

## Installation

Begin by using `git clone` to clone the repository to a local directory:
```
git clone https://github.com/metjmart/AtmosColors.git
```

Since AtmosColors is not an official Julia package, it won't be located in
Julia's `LOAD_PATH`. Therefore, we have to manually extend `LOAD_PATH` to
include the location of AtmosColors. There are a couple ways to do this.

First, it can be extended by opening the `~/.juliarc.jl` file (or creating it
if it doesn't exist) and adding the following to the file
(see the [Modules documentation](https://docs.julialang.org/en/stable/manual/modules/)):
```julia
push!(LOAD_PATH, "/path/to/AtmosColors/src/")
```
This will extend the `LOAD_PATH` on every Julia initialization. Alternatively,
we could append additional directories to our `LOAD_PATH` evironment variable
by adding the following to our `~/.bashrc` (or which ever shell is used) and
sourcing `~/.bashrc`:
```
export JULIA_LOAD_PATH="/path/to/AtmosColors/src/"
source ~/.bashrc
```
Either method will suffice! We should now be able to load AtmosColors as a custom
module by adding the following to the beginning of our code:
```julia
using AtmosColors
```

## Utility

### cmaps.jl
* Access and create ColorMaps in Julia

### cmaps/
* Directory containing text files with RGB triplets for colormaps to be created by the create_cmap function


