//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import SwiftExpansion
import RxSwift

extension ObservableType where Element: OptionalType {
  public func unwrap() -> Observable<Element.Wrapped> {
    return flatMapLatest { value in
      value.optional.map { Observable<Element.Wrapped>.just($0) } ?? Observable<Element.Wrapped>.empty()
    }
  }
}

