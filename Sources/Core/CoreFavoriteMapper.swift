//
//  File.swift
//  
//
//  Created by Samlo Berutu on 12/12/21.
//

import Foundation
public protocol CoreFavoriteMapper {
    associatedtype Request
    associatedtype Response
    associatedtype Domain
    associatedtype Entity
    
    func transformDomainToEntity(request: Request, domain: Domain) -> Entity
    func transformEntityToDomain(entity:[Entity]) -> [Response]
}
