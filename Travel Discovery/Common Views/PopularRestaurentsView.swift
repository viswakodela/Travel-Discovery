//
//  PopularRestaurentsView.swift
//  Travel Discovery
//
//  Created by Viswa Kodela on 2020-11-10.
//

import SwiftUI

struct PopularRestaurantsView: View {
    
    var body: some View {
        VStack {
            
            SectionHeaderText(text: "Popular Restaurants", actionLabel: "See All")
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8, content: {
                    ForEach(0..<10, id: \.self) { _ in
                        Spacer()
                            .clipShape(Rectangle())
                            .frame(width: 200, height: 100)
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(8)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                            .padding(.bottom)
                    }
                })
                .padding(.horizontal)
            }
        }
    }
}

struct PopularRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularRestaurantsView()
    }
}
