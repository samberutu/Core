//
//  File.swift
//  
//
//  Created by Samlo Berutu on 08/12/21.
//

import Foundation
public protocol CoreMapper {
    associatedtype Request
    associatedtype Domain
    
    func transformResponseToDomain(request: Request) -> Domain
}
