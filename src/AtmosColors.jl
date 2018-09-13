__precompile__()

module AtmosColors

    using Colors, PyPlot, DelimitedFiles

    export extract_rgbs, create_cmap

    include("cmaps.jl")

end # module
