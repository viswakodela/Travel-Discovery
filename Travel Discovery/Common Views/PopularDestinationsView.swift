//
//  PopularDesinationsView.swift
//  Travel Discovery
//
//  Created by Viswa Kodela on 2020-11-10.
//

import SwiftUI

struct PopularDestinationsView: View {
    
    var body: some View {
        VStack {
            SectionHeaderText(text: "Popular Restaurants", actionLabel: "See All")
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10, content: {
                    ForEach(0..<10, id: \.self) { _ in
                        Spacer()
                            .clipShape(Rectangle())
                            .frame(width: 150, height: 125)
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

struct PopularDestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationsView()
    }
}
