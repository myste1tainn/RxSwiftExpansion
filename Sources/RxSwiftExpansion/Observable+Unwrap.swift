//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import SwiftExpansion
import RxSwift

extension ObservableType where E: OptionalType {
  public func unwrap() -> Observable<E.Wrapped> {
    return flatMapLatest { value in
      value.optional.map { Observable<E.Wrapped>.just($0) } ?? Observable<E.Wrapped>.empty()
    }
  }
}

