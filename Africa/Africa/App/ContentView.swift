//
//  ContentView.swift
//  Africa
//
//  Created by QINXIN SHU on 2021/09/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - PROPERTIES
        
        let animals: [Animal] =
        Bundle.main.decode("animals.json")
        
        // MARK: - BODY
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDataView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    } //: LINK
                    
                } //: LOOP
            } //: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
