# FirebaseTestLab
/// 1. build 
xcodebuild -project POCFirebaseTestLab.xcodeproj \
   -scheme POCFirebaseTestLab \
   -derivedDataPath DerivedData \
   -sdk iphoneos build-for-testing

/// 2. validate cert
codesign --verify --deep --verbose ./DerivedData/Build/Products/Debug-iphoneos/POCFirebaseTestLab.app

/// 3. zip test and upload firebase console
cd DerivedData/Build/Products : \
zip -r MyTests.zip Debug-iphoneos POCFirebaseTestLab_POCFirebaseTestLab_iphoneos16.0-arm64.xctestrun
