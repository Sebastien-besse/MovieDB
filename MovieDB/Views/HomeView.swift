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
    @State private var selectedFilter : FilterType = .popular
    var body: some View {
        NavigationStack{
            VStack(spacing: 0){
                ButtonFilterView(selectedFilter: $selectedFilter)
                    .padding()
                    .background(Color.black)
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
                        VStack(alignment: .leading) {
                            Text("Home")
                                .font(.system(size: 40).weight(.heavy))
                                .foregroundColor(.white)
                                .padding(.bottom, 8)
                        }
                    }
                }
                .toolbarBackground(.black, for: .navigationBar)
            }
        }
        .onAppear{
            loadData(filter: selectedFilter)
        }
        .onChange(of: selectedFilter){
            loadData(filter: selectedFilter)
        }
    }
    private func loadData(filter: FilterType){
        Task{
            self.items = []
            do{
                let restItems : TVShowResponse
                switch filter{
                case .popular:
                    restItems = try await tvShowRepo.getTVShow()
                case .rated:
                    restItems = try await tvShowRepo.getTVShowTopRated()
                case .airing:
                    restItems = try await tvShowRepo.getTVShowAiring()
                }
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

#Preview {
    HomeView()
}
