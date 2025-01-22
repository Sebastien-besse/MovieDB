//
//  TVShowCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 05/01/2025.
//

import SwiftUI

struct TVShowCell: View {
    let tvShow : TVShow
    var satisfaction : Int{
        return Int(tvShow.voteAverage * 10)
    }
    var colorNot: Color{
        switch satisfaction{
        case 0...49:
            return .red
        case 50...89:
            return  .orange
        case 90...100:
            return .green
        default: return.black
        }
        
    }
    
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
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    Circle()
                        .stroke(colorNot.opacity(0.5), lineWidth: 6)
                        .frame(maxWidth: 40)
                        .overlay {
                            Text("\(Int(tvShow.voteAverage*10))")
                                .font(.footnote)
                                .foregroundStyle(.white)
                                .bold()
                            Circle()
                                .trim(from: 0, to: tvShow.voteAverage/10)
                                .stroke(colorNot, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                                .rotationEffect(.degrees(-90))
                                .frame(maxWidth: 40)
                        }
                    
                }
                Text(tvShow.description)
                    .foregroundStyle(.gray)
                    .lineLimit(5)
                    .padding(.top, 0.8)
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.black)
        
    }
}

#Preview {
    TVShowCell(tvShow: TVShow.previewsTVShow[5])
    
}
