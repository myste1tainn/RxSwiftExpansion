//
// Created by Arnon Keereena on 2019-03-26.
//

import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
  public func asDriverEmptyIfError() -> Driver<E> {
    return asDriver { error in
      return Driver.empty()
    }
  }
}
