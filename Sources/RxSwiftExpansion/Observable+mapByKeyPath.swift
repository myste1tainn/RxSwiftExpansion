//
// Created by Arnon Keereena on 2019-08-03.
//

import Foundation
import RxSwift

extension ObservableType {
  public func map<Result>(_ keyPath: KeyPath<E, Result>) -> Observable<Result> {
    return map { $0[keyPath: keyPath] }
  }
  
  public func flatMap<Result>(_ keyPath: KeyPath<E, Result>) -> Observable<Result> {
    return flatMap { Observable.just($0[keyPath: keyPath]) }
  }
}
