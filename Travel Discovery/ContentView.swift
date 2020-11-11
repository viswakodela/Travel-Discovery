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

struct DiscoverCategoriesView: View {
    
    private let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "tray.fill"),
        .init(name: "History", imageName: "books.vertical.fill"),
        
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 8, content: {
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 4) {
                        Image(systemName: category.imageName)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(32)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 68)
                }
            })
            .padding(4)
        }
        //.background(Color.red)
        .padding(.horizontal)
    }
}

struct PopularDestinationsView: View {
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Popular Destinations")
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .bold))
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10, content: {
                    ForEach(0..<10, id: \.self) { _ in
                        Spacer()
                            .clipShape(Rectangle())
                            .frame(width: 150, height: 125)
                            .background(Color.gray)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 3, x: 0, y: 2)
                            .padding(.bottom)
                    }
                }).padding(4)
            }
            //.background(Color.red)
            .padding(.horizontal)
        }
    }
}



struct PopularRestaurantsView: View {
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Popular Restaurants")
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .bold))
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8, content: {
                    ForEach(0..<10, id: \.self) { _ in
                        Spacer()
                            .clipShape(Rectangle())
                            .frame(width: 200, height: 100)
                            .background(Color.gray)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 3, x: 0, y: 2)
                            .padding(.bottom)
                    }
                }).padding(4)
            }
            //.background(Color.red)
            .padding(.horizontal)
        }
    }
}

struct TrendingCreatorsView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 8, content: {
                ForEach(0..<8) { num in
                    VStack(spacing: 4) {
                        Spacer()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .black, radius: 3, x: 0, y: 2)
                    }
                }
            }).padding(4)
        }
        //.background(Color.red)
        .padding(.horizontal)
    }
}
