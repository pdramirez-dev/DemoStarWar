//
//  Repository.swift
//  DemoStarWar
//
//  Created by Pablo E Diaz Ramairez on 9/6/24.
//

import Foundation


protocol DataRepository {
    var url: URL { get }
    
}

extension DataRepository {
    func getData() throws -> [StarCard]
    {
        let data = try? Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDTO].self, from: data!).map(\.toCard)
    }
}
// load Data

struct Repository: DataRepository {
    
    var url: URL {
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
    
}

struct RepositoryTests: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars Test", withExtension: "json")!
    }
}
