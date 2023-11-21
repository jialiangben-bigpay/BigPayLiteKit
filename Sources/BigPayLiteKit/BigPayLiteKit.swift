
import Foundation
import UIKit

public class BigPayLiteKit {
    public static func showBigPayLite(_ navigationController: UINavigationController) {
        let destinationVC = UIStoryboard(name: "BigPayMain", bundle: Bundle.module).instantiateViewController(withIdentifier: "VC") as! ViewController
        navigationController.pushViewController(destinationVC, animated: true)
    }
}
