//
//  HomeView.swift
//  MovieDB
//
//  Created by Sebastien Besse on 06/01/2025.
//

import SwiftUI

struct HomeView: View {
    let tvShowRepo = TVShowRepo()
    @State private var items: [TVShow] = []
    @State private var selectedFilter: FilterType = .popular
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ButtonFilterView(selectedFilter: $selectedFilter)
                    .padding()
                    .background(Color.black)
                
                ScrollView {
                    VStack {
                        ForEach(items) { item in
                            NavigationLink {
                                TVShowDetailCell(movie: item)
                                    
                            } label: {
                                TVShowCell(tvShow: item)
                            }
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
        .onAppear {
            loadData(filter: selectedFilter)
        }
        .onChange(of: selectedFilter) {
            loadData(filter: selectedFilter)
        }
        .accentColor(.white)
    }
    
    private func loadData(filter: FilterType) {
        Task {
            self.items = []
            do {
                let restItems: TVShowResponse
                switch filter {
                case .popular:
                    restItems = try await tvShowRepo.getTVShowPopular()
                case .rated:
                    restItems = try await tvShowRepo.getTVShowTopRated()
                case .airing:
                    restItems = try await tvShowRepo.getTVShowAiringToday()
                }
                
                let tvShows = restItems.results.map { TVShowMapper().map(rest: $0) }

                DispatchQueue.main.async {
                    self.items = tvShows
                }

                for (index, show) in tvShows.enumerated() {
                    Task {
                        do {
                            let detailResponse = try await tvShowRepo.getTVShowDetail(serieID: show.id)
                            let seasons = detailResponse.seasons.map { TVShowDetailMapper().map(rest: $0) }
                            DispatchQueue.main.async {
                                self.items[index].season = seasons
                            }
                        } catch {
                            print("Erreur lors du chargement des saisons pour \(show.title): \(error)")
                        }
                    }
                }
            } catch {
                print("Erreur lors du chargement des séries: \(error)")
            }
        }
    }
}

#Preview {
    HomeView()
}
