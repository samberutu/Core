//
//  File.swift
//  
//
//  Created by Samlo Berutu on 08/12/21.
//

import Foundation
import Combine
public protocol CoreRemoteDataSource {
    associatedtype Request
    associatedtype Response
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
