//
//  TVShowCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 05/01/2025.
//

import SwiftUI

struct TVShowCell: View {
    
    let tvShow : TVShow

    var body: some View {
        HStack(spacing: 30){
            AsyncImage(url: tvShow.image) { image in
                image
                    .resizable()
                    .frame(width: 110, height: 180)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            } placeholder: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(white: 0.7))
                    .frame(width: 110, height: 180)
                    .overlay {
                        Image(systemName: "photo")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
            }
            VStack(alignment: .leading){
                HStack(){
                    Text(tvShow.title)
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    CircleVoteAverageCell(tvShow: tvShow)
                    
                }
                Text(tvShow.description)
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
                    .lineLimit(5)
                    .padding(.top, 0.8)
            }
            .multilineTextAlignment(.leading)

        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.black)
    }
}

#Preview {
    TVShowCell(tvShow: TVShow.previewsTVShow[2])
    
}
