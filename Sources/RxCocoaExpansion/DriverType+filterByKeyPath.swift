//
// Created by Arnon Keereena on 2019-09-03.
//

import Foundation
import RxSwift
import RxCocoa

extension DriverType {
  public func filter(by keyPath: KeyPath<Element, Bool>) -> Driver<Element> {
    return filter { $0[keyPath: keyPath] }
  }
  
  public func filterNot(by keyPath: KeyPath<Element, Bool>) -> Driver<Element> {
    return filter { !$0[keyPath: keyPath] }
  }
  
  public func when(_ keyPath: KeyPath<Element, Bool>) -> Driver<Element> {
    return filter(by: keyPath)
  }
  
  public func whenNot(_ keyPath: KeyPath<Element, Bool>) -> Driver<Element> {
    return filterNot(by: keyPath)
  }
}
