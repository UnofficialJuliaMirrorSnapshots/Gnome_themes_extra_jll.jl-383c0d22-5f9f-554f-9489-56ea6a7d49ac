# Autogenerated wrapper script for Gnome_themes_extra_jll for powerpc64le-linux-gnu
export adwaita_index

using GTK3_jll
using Librsvg_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `adwaita_index`
const adwaita_index_splitpath = ["share", "themes", "Adwaita", "index.theme"]

# This will be filled out by __init__() for all products, as it must be done at runtime
adwaita_index_path = ""

# adwaita_index-specific global declaration
# This will be filled out by __init__()
adwaita_index = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (GTK3_jll.PATH_list, Librsvg_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (GTK3_jll.LIBPATH_list, Librsvg_jll.LIBPATH_list,))

    global adwaita_index_path = abspath(joinpath(artifact"Gnome_themes_extra", adwaita_index_splitpath...))

    global adwaita_index = adwaita_index_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

