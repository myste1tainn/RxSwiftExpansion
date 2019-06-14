//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import RxCocoa

extension SharedSequenceConvertibleType {
  public func void() -> SharedSequence<SharingStrategy, Void> {
    return map { _ in }
  }
}

