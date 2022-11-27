ENV["JULIA_EDITOR"] = "vim"
import Pkg
let
    pkgs = ["Revise", "OhMyREPL", "BenchmarkTools", "Debugger"]
    for pkg in pkgs
        if Base.find_package(pkg) === nothing
            Pkg.add(pkg)
        end
    end
end

using Revise
using OhMyREPL
using BenchmarkTools
using Debugger
