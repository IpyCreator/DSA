import Foundation


class NetworkServiceWithInterceptor: NetworkService {
    var interceptor: RequestInterceptor?
    
    override func performRequest<T: Decodable>(
        _ endpoint: Endpoint,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let interceptor = interceptor else {
            
            super.performRequest(endpoint, completion: completion)
            return
        }
        
        guard let request = endpoint.urlRequest else {
            completion(.failure(NetworkError.invalidRequest))
            return
        }
        
        interceptor.adapt(request) { result in
            switch result {
            case .success(let adaptedRequest):
                super.performRequest(endpoint, completion: completion)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
