
open -a Simulator --args -arch x86_64
echo Start Build ==========================
xcodebuild test \
-project POCTestLab.xcodeproj \
-scheme POCTestLabUITests \
-destination "platform=iOS Simulator,name=iPhone 16 Pro" \
-resultBundlePath ./TestResults/UITestsCase