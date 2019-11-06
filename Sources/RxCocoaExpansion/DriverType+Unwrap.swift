//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import SwiftExpansion
import RxSwift
import RxCocoa

extension DriverType where Element: OptionalType {
  public func unwrap() -> Driver<Element.Wrapped> {
    return flatMap { value in
      value.optional.map { Driver<Element.Wrapped>.just($0) } ?? Driver<Element.Wrapped>.empty()
    }
  }
}

extension SharedSequenceConvertibleType where SharingStrategy == DriverSharingStrategy, Element: OptionalType {
  public func unwrap() -> Driver<Element.Wrapped> {
    return flatMap { value in
      value.optional.map { Driver<Element.Wrapped>.just($0) } ?? Driver<Element.Wrapped>.empty()
    }
  }
}

extension ControlProperty where Element: OptionalType {
  public func unwrap() -> Observable<Element.Wrapped> {
    return flatMap { value in
      value.optional.map { Observable<Element.Wrapped>.just($0) } ?? Observable<Element.Wrapped>.empty()
    }
  }
}
