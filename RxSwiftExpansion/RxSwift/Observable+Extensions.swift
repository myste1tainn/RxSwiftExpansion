import Foundation
import RxSwift
import RxCocoa

extension ObservableType where E == Bool {
  /// Boolean not operator
  public func not() -> Observable<Bool> {
    return self.map(!)
  }
  
}

extension ObservableType {
  public func emptyIfError() -> Observable<E> {
    return catchError { _ in
      return Observable.empty()
    }
  }
  
  public func asDriverEmptyIfError() -> Driver<E> {
    return asDriver { error in
      return Driver.empty()
    }
  }
  
  public func void() -> Observable<Void> {
    return map { _ in }
  }
}
