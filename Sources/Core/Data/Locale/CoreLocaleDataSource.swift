//
//  File.swift
//  
//
//  Created by Samlo Berutu on 08/12/21.
//

import Combine
import Foundation
public protocol CoreLocaleDataSource {
    associatedtype Request
    associatedtype Response
    associatedtype Domain
    associatedtype Entity

    func getGamesFavorite() -> AnyPublisher<[Entity], Error>
    func addGameFavorite(game: Domain, screenshot: Request) -> AnyPublisher<Bool, Error>
    func deleteGameFavorite(id: String) -> AnyPublisher<Bool, Error>
    func isFavoriteGame(id: String) -> AnyPublisher<Bool, Error>
    
}
