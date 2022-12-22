## clean up from previous runs
rm -r -force nupkgs
mkdir nupkgs

## install backoffice dependencies
cd ./src/Clip/Backoffice
npm run build
cd ../../../

## pack the container 
dotnet pack ./src/Clip/Clip.csproj -c Release -o nupkgs
