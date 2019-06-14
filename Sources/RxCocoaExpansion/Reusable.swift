#if TARGET_OS_SIMUATOR || TARGET_OS_iOS
import SwiftExpansion
import UIKit

extension UITableViewCell: Reusable {
}

extension UIViewController: Reusable {
}

extension UITableView {
  func dequeueReusableCell<T: UITableViewCell>(ofType cellType: T.Type = T.self, at indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withIdentifier: cellType.reuseID,
                                         for: indexPath) as? T else {
      fatalError()
    }
    return cell
  }
}

extension UIStoryboard {
  func instantiate<T: UIViewController>(_ type: T.Type = T.self) -> T {
    guard let viewController = instantiateViewController(withIdentifier: type.reuseID) as? T else {
      fatalError()
    }
    return viewController
  }
}
#endif
