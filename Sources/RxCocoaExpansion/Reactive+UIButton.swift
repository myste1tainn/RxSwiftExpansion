//
// Created by Arnon Keereena on 2019-02-27.
//

#if TARGET_OS_SIMUATOR || TARGET_OS_iOS
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
#endif
