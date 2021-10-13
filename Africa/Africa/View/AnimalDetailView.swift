//
//  AnimalDataView.swift
//  Africa
//
//  Created by QINXIN SHU on 2021/10/12.
//

import SwiftUI

struct AnimalDataView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEALINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                // LINK
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: SCROLL
        
    }
}

// MARK: - PREVIEW

struct AnimalDataView_Previews: PreviewProvider {
    static let animals: [Animal] =
        Bundle.main.decode("animals.json")
                           
    static var previews: some View {
        NavigationView {
            AnimalDataView(animal: animals[0])
        }
        .previewDevice("iPhone 11")
    }
}
