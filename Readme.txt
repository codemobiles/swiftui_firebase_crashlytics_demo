
- new project
- pod init
- drag Podfile into project
- add firebase crashlytics dependencies into Podfile
  pod 'Firebase/Core'
  pod 'Firebase/Crashlytics'
- pod install
- Setup Crashlytic in Firebase
  + open: https://console.firebase.google.com/
  + new project named: demo
  + add ios app
  + register app with "com.swu.ios.demoCrashlytic"
  + skip optional fields and click register button
  + drag generated GoogleService-Info.plist into the project located in
    "../project-name/project-name/GoogleService-Info.plist"
  + repeat next until back to the console again
  + Click Relase and monitor, then click crashlytic
  + Wait and back to setup xcode project and run
  
  
- Setup AppDelegate and call FirebaseApp.configure() in didFinishLauchingWithOption...
- Click Project icon, then Build phase then add run script
- Paste "${PODS_ROOT}/FirebaseCrashlytics/run" into shell field
- Click Project icon, then Build setting then find debug, then enable "dwarf-with-dsym" both release and debug

# Test
- Run project and check-in firebase console you should see App detected and we're waiting for a crash!
- Add code to simulator crash

      Button("Crash Me"){
        let numbers = [0]
        let _ = numbers[1]
      }

  
- Delete current app in homescreen on the simulator or device
- Re-run again and stop
- Run app from simualtor directly (not from xcode run)
- click crash button to simulate
