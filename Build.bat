IF NOT DEFINED Configuration SET Configuration=Release
MSBuild.exe Win32Interop.sln -t:clean
MSBuild.exe Win32Interop.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe Win32Interop.sln -m /property:Configuration=%Configuration%
git add -A
git commit -a --allow-empty-message -m ''
git push