import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        guard let controller = window.rootViewController as? FlutterViewController else {
            fatalError("contoller is not type FlutterViewController")
        }
        let channel = FlutterMethodChannel(name: "flavor", binaryMessenger: controller.binaryMessenger)
        channel.setMethodCallHandler { (call: FlutterMethodCall,result: FlutterResult) in
//            switch(call.Method){
////
//            }
            let method=call.method
            print("method===\(method)")
            let flavor=Bundle.main.object(forInfoDictionaryKey: "Flavor")
            result(flavor)
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

}
