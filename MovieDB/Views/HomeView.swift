//
//  HomeView.swift
//  MovieDB
//
//  Created by Sebastien Besse on 06/01/2025.
//

import SwiftUI

struct HomeView: View {
    let tvShowRepo = TVShowRepo()
    @State private var items : [TVShow] = []
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ForEach(items) { item in
                        TVShowCell(tvShow: item)
                    }
                }
            }
            .foregroundColor(.white)
            .background(.black)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Home")
                        .font(.system(size: 40).weight(.heavy))
                        .foregroundColor(.white)
                        .padding(2)
                }
            }
            .toolbarBackground(.black, for: .navigationBar)
        }
        .onAppear{
            Task{
                self.items = []
                do{
                    let restItems = try await tvShowRepo.getTVShow()
                    for restItem in restItems.results {
                        let item = TVShowMapper().map(rest: restItem)
                        items.append(item)
                    }
                }catch{
                    print("\(error)")
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
