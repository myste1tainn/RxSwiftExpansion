import Foundation
import RxSwift
import RxCocoa

public final class ErrorTracker: SharedSequenceConvertibleType {
  public typealias SharingStrategy = DriverSharingStrategy
  private let _subject = PublishSubject<Error>()
  
  public func trackError<O: ObservableConvertibleType>(from source: O) -> Observable<O.Element> {
    return source.asObservable().do(onError: onError)
  }
  
  public func asSharedSequence() -> SharedSequence<SharingStrategy, Error> {
    return _subject.asObservable().asDriverEmptyIfError()
  }
  
  public func asObservable() -> Observable<Error> {
    return _subject.asObservable()
  }
  
  private func onError(_ error: Error) {
    _subject.onNext(error)
  }
  
  public init() {}
  
  deinit {
    _subject.onCompleted()
  }
}

extension ObservableConvertibleType {
  public func trackError(_ errorTracker: ErrorTracker) -> Observable<Element> {
    return errorTracker.trackError(from: self)
  }
}
