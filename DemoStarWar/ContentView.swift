//
//  ContentView.swift
//  DemoStarWar
//
//  Created by Pablo E Diaz Ramairez on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var vm = StarCardVM()
    var body: some View {
       List
        {
            ForEach(vm.cards) { card in
                StarCardView(card: card)
            }
        }
       
    }
}

#Preview {
   ContentView(vm: StarCardVM(repository: RepositoryTests()))
}
