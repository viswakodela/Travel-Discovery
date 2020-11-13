//
//  ContentView.swift
//  Travel Discovery
//
//  Created by Viswa Kodela on 2020-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DiscoverCategoriesView()
                Spacer()
                PopularDestinationsView()
                Spacer()
                PopularRestaurantsView()
                Spacer()
                TrendingCreatorsView()
            }
            .navigationBarTitle("Discover",
                                displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



