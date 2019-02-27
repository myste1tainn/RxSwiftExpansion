//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UIButton {
  public var selected: ControlProperty<Bool> {
    return controlProperty(editingEvents: [.touchUpInside],
                           getter: { $0.isSelected },
                           setter: { $0.isSelected = $1 })
  }
}
