//
//  DemoStarWarTests.swift
//  DemoStarWarTests
//
//  Created by Pablo E Diaz Ramairez on 9/6/24.
//

import Testing
@testable import DemoStarWar

extension Tag {
    @Tag static var repository: Self
}
@Suite("Repository Test  Star Cards",.tags(.repository))
struct DemoStarWarTests {
    let repository = RepositoryTests()
    let viewModel = StarCardVM(repository: RepositoryTests())
    
    @Test("Test load Data Repositoy")
    func dataLoad() async throws {
        
        let data = try repository.getData()
        #expect(data.count == 4)
    }
    
    @Test("ViewModel load Data Repositoy")
    func dataLoadVM() async throws {
        #expect(viewModel.cards.count == 4)
    }

}
