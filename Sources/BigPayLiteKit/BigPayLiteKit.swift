
import Foundation
import UIKit

public class BigPayLiteKit {
    public static func registerAllFonts() {
        for font in ["Jost-Bold","Jost-SemiBold","Jost-Medium","Jost-Regular"] {
            do {
              try self.registerFont(named: font)
               // Handle the result
            } catch {
               // Handle the error
            }
        }
    }
    
    
    private static func registerFont(named name: String) throws {
       guard let asset = NSDataAsset(name: "Fonts/\(name)", bundle: Bundle.module),
          let provider = CGDataProvider(data: asset.data as NSData),
          let font = CGFont(provider),
          CTFontManagerRegisterGraphicsFont(font, nil) else {
        throw fatalError("Couldn't create font from filename: \(name)")
       }
    }
    
    public static func showBigPayLite(_ navigationController: UINavigationController) {
        let destinationVC = UIStoryboard(name: "BigPayMain", bundle: Bundle.module).instantiateViewController(withIdentifier: "VC") as! ViewController
        navigationController.pushViewController(destinationVC, animated: true)
    }
}
