//
//  File.swift
//  
//
//  Created by Samlo Berutu on 12/12/21.
//

import Foundation
import Combine
public struct CoreFavoriteInteractor<Request, Response, Domain, Entity, R: LocaleRepository>: CoreFavoriteUseCase
where R.Request == Request, R.Response == Response, R.Domain == Domain, R.Entity == Entity {
    
    
    private let _repository: R
    
    public init(repository: R) {
        _repository = repository
    }
    public func getGamesFavorite() -> AnyPublisher<[Response], Error> {
        _repository.getGamesFavorite()
    }
    
    public func addGameFavorite(game: Domain, screenshot: Request) -> AnyPublisher<Bool, Error> {
        _repository.addGameFavorite(game: game, screenshot: screenshot)
    }
    
    public func deleteGameFavorite(id: String) -> AnyPublisher<Bool, Error> {
        _repository.deleteGameFavorite(id: id)
    }
    
    public func isFavoriteGame(id: String) -> AnyPublisher<Bool, Error> {
        _repository.isFavoriteGame(id: id)
    }
}
