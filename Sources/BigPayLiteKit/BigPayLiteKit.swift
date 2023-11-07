
import Foundation
import UIKit
import Flutter

public protocol BigPayLiteKitDelegate {
    func onCardBalanceTapped()
}

public class BigPayLiteKit {
    static public let shared = BigPayLiteKit()
    
    var flutterEngine: FlutterEngine?
    
    public var delegate: BigPayLiteKitDelegate?
    
    init() {
       if flutterEngine == nil {
            self.flutterEngine = FlutterEngine(name: "my flutter engine")
            flutterEngine?.run()
            self.setUpMethodChannel()
        }
    }
    
    public func showFlutter(_ navigationController: UINavigationController) {
        guard let engine = flutterEngine else { return }
        if engine.viewController != nil{
            engine.viewController = nil
            engine.destroyContext()
        }
        engine.run()
        self.setUpMethodChannel()
        let flutterViewController = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(flutterViewController, animated: true)
    }
    
    public func dispose() {
        delegate = nil
        flutterEngine?.destroyContext()
        flutterEngine = nil
    }
    
    
    func setUpMethodChannel() {
        let channel = FlutterMethodChannel(name: "com.bigpay.lite_mock", binaryMessenger: self.flutterEngine!.binaryMessenger)
        channel.setMethodCallHandler { call, result in
            if call.method == "onCardBalanceTapped" {
                self.delegate?.onCardBalanceTapped()
            }
        }
    }
}
