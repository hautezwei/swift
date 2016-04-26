
# add some info about to reproduce the issue
XCODEUUID=`defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID`
# F41BD31E-2683-44B8-AE7F-5F09E919790E

for f in ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/*;
    do defaults write "$f/Contents/Info" DVTPlugInCompatibilityUUIDs -array-add $XCODEUUID;
    done
#  this is a shell script to let you change the UUID
# add some special moments to go to China  for interview spec 
