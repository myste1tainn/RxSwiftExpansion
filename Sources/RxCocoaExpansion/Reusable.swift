import UIKit
import SwiftExpansion

extension UITableViewCell: Reusable {}

extension UIViewController: Reusable {}

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
  func instantiateViewController<T: UIViewController>(ofType type: T.Type = T.self) -> T {
    guard let viewController = instantiateViewController(withIdentifier: type.reuseID) as? T else {
      fatalError()
    }
    return viewController
  }
}
