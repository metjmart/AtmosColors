# AtmosColors

## Introduction

Specify a collection of RGB triplets that can be ingested through Julia and transformed into a colormap for use with PyPlot.

Operating Julia version: 1.0.0

## Package dependencies

The following packages should be installed prior to using AtmosColors: 

* [Colors](https://github.com/JuliaGraphics/Colors.jl)
* [PyPlot](https://github.com/JuliaPy/PyPlot.jl)

This can be accomplished by first opening the Julia REPL and entering the Pkg
REPL-mode by hitting the `]` key.
Then, packages can be added via the following command
```julia
add <pkgname>
```
where `<pkgname>` is replaced by any of the package names listed above.

## Installation

Begin by using `git clone` to clone the repository to a local directory
```
git clone https://github.com/metjmart/AtmosColors.git
```

Since AtmosColors is not an official Julia package, it must be loaded as
a module. This can be done by manually extending the global variable
`LOAD_PATH`. This variable contains the directories which Julia will search
for modules when calling `require`.

To extend the `LOAD_PATH` variable, open the `~/.julia/config/startup.jl` file
(or create it in the above specified directory if it doesn't exist) and add the following to the file
(see the [Modules documentation](https://docs.julialang.org/en/v1/manual/modules/index.html))
```julia
push!(LOAD_PATH, "/path/to/AtmosColors/src/")
```
where `"/path/to/"` is replaced by the path to the user's local copy of AtmosColors.
This will extend the `LOAD_PATH` variable on every Julia initialization.
We should now be able to load JuliaMet as a custom
module by adding the following to the beginning of our code
```julia
using AtmosColors 
```

## Utility

### cmaps.jl
* Access and create ColorMaps in Julia

### cmaps/
* Directory containing text files with RGB triplets for colormaps to be created by the create_cmap function


