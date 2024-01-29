import UIKit


/*
 1. 500 refresh token case
 */
var greeting = "Hello, playground"

let networkService = NetworkServiceWithInterceptor()
let loggingInterceptor = LoggingInterceptor()

networkService.interceptor = loggingInterceptor

let sampleEndpoint = SampleEndpoint()

networkService.performRequest(sampleEndpoint) { (result: Result<YourDecodableType, Error>) in
    switch result {
    case .success(let response):
        // Handle success
        debugPrint("Response: \(response)")
    case .failure(let error):
        // Handle error
        debugPrint("Error: \(error)")
    }
}
