//
//  StarCardVM.swift
//  DemoStarWar
//
//  Created by Pablo E Diaz Ramairez on 9/7/24.
//

import SwiftUI


@Observable
final class StarCardVM {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
        }
    }
    
}
