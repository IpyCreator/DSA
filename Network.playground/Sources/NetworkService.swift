import Foundation

import Foundation

class NetworkService {
    private let session: URLSession
    
    init() {
        let configuration = URLSessionConfiguration.default
        self.session = URLSession(configuration: configuration)
    }
    
    // MARK: - Public Methods
    
    func performRequest<T: Decodable>(
        _ endpoint: Endpoint,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let request = endpoint.urlRequest else {
            completion(.failure(NetworkError.invalidRequest))
            return
        }
        
        let task = session.dataTask(with: request) { (data, response, error) in
            self.handleResponse(data: data, response: response, error: error, completion: completion)
        }
        
        task.resume()
    }
    
    // MARK: - Private Methods
    
    private func handleResponse<T: Decodable>(
        data: Data?,
        response: URLResponse?,
        error: Error?,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        if let data = data {
            do {
                let decodedObject = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch {
                completion(.failure(error))
            }
        } else if let error = error {
            completion(.failure(error))
        } else {
            completion(.failure(NetworkError.unknownError))
        }
    }
}
