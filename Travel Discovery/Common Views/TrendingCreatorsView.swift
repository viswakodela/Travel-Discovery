//
//  TrendingCreators.swift
//  Travel Discovery
//
//  Created by Viswa Kodela on 2020-11-10.
//

import SwiftUI

struct TrendingCreatorsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8, content: {
                ForEach(0..<8) { num in
                    VStack(spacing: 4) {
                        Spacer()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    }
                }
            }).padding(4)
        }
        .padding(.horizontal)
    }
}

struct TrendingCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatorsView()
    }
}
