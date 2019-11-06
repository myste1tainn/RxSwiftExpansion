//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation
import RxSwift
import RxCocoa

public protocol DriverType: SharedSequenceConvertibleType where SharingStrategy == DriverSharingStrategy {
}

extension Driver: DriverType where SharingStrategy == DriverSharingStrategy {
}

