//
//  TVShowDetailCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 26/01/2025.
//

import SwiftUI

struct TVShowDetailCell: View {
    
    let movie : TVShow
    let tvShowRepo = TVShowRepo()
    @State private var seasons : [Season] = []
    
    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: movie.image) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .clipShape(Rectangle())
                    
                } placeholder: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(white: 0.7))
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        .overlay {
                            Image(systemName: "photo")
                                .font(.title)
                                .foregroundStyle(.black)
                        }
                }
                VStack(alignment: .leading, spacing: 20){
                    HStack{
                        Text(movie.title)
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                        Spacer()
                        CircleVoteAverageCell(tvShow: movie)
                    }
                    
                    Text(movie.description)
                        .font(.system(size: 14))
                        .foregroundStyle(.white.opacity(0.7))
                    
                    
                    ForEach(seasons){season in
                        SeasonShowCell(season: season)
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
        .background(Color.black)
        .toolbarBackground(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(false)
        .tint(.white)
        .onAppear{
            loadData(tvShowID: movie.id)
        }
    }
    
    private func loadData(tvShowID: Int){
        Task{
            do{
                let restItems = try await tvShowRepo.getTVShowDetail(serieID: tvShowID)
                DispatchQueue.main.async {
                    self.seasons = restItems.seasons.map { TVShowDetailMapper().map(rest: $0) }
                }
            }catch{
                print("\(error)")
            }
        }
    }
}

#Preview {
    TVShowDetailCell(movie: .previewsTVShow[2])
}
