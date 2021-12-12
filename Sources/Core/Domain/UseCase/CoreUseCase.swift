//
//  File.swift
//  
//
//  Created by Samlo Berutu on 08/12/21.
//

import Combine
public protocol CoreUseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
