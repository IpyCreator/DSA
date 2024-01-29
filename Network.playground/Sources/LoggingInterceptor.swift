import Foundation

class LoggingInterceptor: RequestInterceptor {
    func adapt(_ request: URLRequest, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        print("Request: \(request)")
        completion(.success(request))
    }
}

