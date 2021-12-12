//
//  File.swift
//  
//
//  Created by Samlo Berutu on 12/12/21.
//

import Foundation
import Combine
public protocol CoreFavoriteUseCase {
    associatedtype Request
    associatedtype Response
    associatedtype Domain
    associatedtype Entity
    func getGamesFavorite() -> AnyPublisher<[Response], Error>
    func addGameFavorite(game: Domain, screenshot: Request) -> AnyPublisher<Bool, Error>
    func deleteGameFavorite(id: String) -> AnyPublisher<Bool, Error>
    func isFavoriteGame(id: String) -> AnyPublisher<Bool, Error>
}
