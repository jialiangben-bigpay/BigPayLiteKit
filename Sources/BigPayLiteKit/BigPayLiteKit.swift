
import Foundation
import UIKit

public class BigPayLiteKit {
    public static func showBigPayLite(_ navigationController: UINavigationController) {
        let destinationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController.pushViewController(destinationVC, animated: true)
    }
}
