//
//  SeasonShowCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 26/01/2025.
//

import SwiftUI

struct SeasonShowCell: View {
    let season : Season
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: season.image) { image in
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
            VStack(alignment: .leading, spacing: 12){
                HStack(){
                    Text(season.name)
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                    
                }
                Text(season.date)
                    .foregroundStyle(.gray.opacity(0.8))
                    .font(.system(size: 14))
                
                
                Text(season.description)
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
                    .lineLimit(5)
            }
        }
    }
}

#Preview {
    SeasonShowCell(season: .previewTheWithcher)
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.black)
}
