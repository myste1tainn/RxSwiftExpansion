//
// Created by Arnon Keereena on 2019-08-03.
//

import Foundation
import RxSwift
import RxCocoa

extension DriverType {
  public func map<Result>(_ keyPath: KeyPath<Element, Result>) -> Driver<Result> {
    return map { $0[keyPath: keyPath] }
  }
  
  public func flatMap<Result>(_ keyPath: KeyPath<Element, Result>) -> Driver<Result> {
    return flatMap { Driver.just($0[keyPath: keyPath]) }
  }
}
