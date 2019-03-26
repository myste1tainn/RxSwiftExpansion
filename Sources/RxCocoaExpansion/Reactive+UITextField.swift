//
// Created by Arnon Keereena on 2019-02-27.
//

#if TARGET_OS_SIMUATOR || TARGET_OS_iOS
import Foundation
import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UITextField {
  public var nonNilText: Observable<String> {
    return controlEvent([.editingChanged]).flatMapLatest { Observable.from(optional: self.base.text) }
  }
}
#endif
