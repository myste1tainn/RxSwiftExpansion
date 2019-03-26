//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import SwiftExpansion
import RxSwift
import RxCocoa

extension ObservableType where E: OptionalType {
  public func unwrap() -> Observable<E.Wrapped> {
    return flatMapLatest { value in
      value.optional.map { Observable<E.Wrapped>.just($0) } ?? Observable<E.Wrapped>.empty()
    }
  }
}

extension SharedSequenceConvertibleType where SharingStrategy == DriverSharingStrategy, E: OptionalType {
  public func unwrap() -> Driver<E.Wrapped> {
    return flatMap { value in
      value.optional.map { Driver<E.Wrapped>.just($0) } ?? Driver<E.Wrapped>.empty()
    }
  }
}

extension ControlProperty where E: OptionalType {
  public func unwrap() -> Observable<E.Wrapped> {
    return flatMap { value in
      value.optional.map { Observable<E.Wrapped>.just($0) } ?? Observable<E.Wrapped>.empty()
    }
  }
}
