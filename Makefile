.PHONY: pack

props = -c Release-LowTrust -p:VersionSuffix='' -p:FParsecNuGet=true -p:Platform='Any CPU'

pack:
	dotnet restore FParsec/FParsec.fsproj
	dotnet build FParsec/FParsec.fsproj ${props} -v n
	dotnet pack FParsec/FParsec.fsproj ${props} -o nupkgs/

