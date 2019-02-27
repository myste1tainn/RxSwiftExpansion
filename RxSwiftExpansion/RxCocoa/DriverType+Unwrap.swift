//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import SwiftExpansion
import RxSwift
import RxCocoa

extension DriverType where E: OptionalType {
  public func unwrap() -> Driver<E.Wrapped> {
    return flatMap { value in
      value.optional.map { Driver<E.Wrapped>.just($0) } ?? Driver<E.Wrapped>.empty()
    }
  }
}

