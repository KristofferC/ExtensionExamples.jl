# GluePkgExamples

Examples of julia projects using glue pkgs


## Precompiling a glue pkg:

```julia
(HasDepWithGluePkgs) pkg> st
Project HasDepWithGluePkgs v0.1.0
Status `~/julia/GluePkgExamples/HasDepWithGluePkgs.jl/Project.toml`
  [4d3288b3] HasGluePkgs v0.1.0 `../HasGluePkgs.jl`
  [6fe1bfb0] OffsetArrays v1.12.8

julia> using UUIDs

julia> pkgid_gluepkgs = Base.identify_package("HasGluePkgs")

julia> glue_pkg_uuid = Base.uuid5(pkgid_gluepkgs.uuid, "GlueOffsetArrays"); # this is how uuid is calculated

julia> glue_id = Base.PkgId(glue_pkg_uuid, "GlueOffsetArrays")

julia> Base.compilecache(glue_id)
[ Info: Precompiling GlueOffsetArrays [38fd9755-cf3d-502d-9327-82410fd5695b]
"/Users/kristoffercarlsson/.julia/compiled/v1.10/GlueOffsetArrays/ZvvrN_ZJsK2.ji"
```
