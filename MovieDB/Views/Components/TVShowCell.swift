//
//  TVShowCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 05/01/2025.
//

import SwiftUI

struct TVShowCell: View {
    let tvShow : TVShow
    
    var averageNot: Float{
        let sum = tvShow.not.reduce(0, +)
        let average = (sum / Float(tvShow.not.count))
        return average
    }
    
    var colorNot: Color{
        switch averageNot{
            case 0...50:
               return .red
            case 52...89:
              return  .orange
            case 90...100:
               return .green
        default: return.black
        }
            
    }
    
    var body: some View {
        HStack(spacing: 30){
            if let image = tvShow.image{
                AsyncImage(url: image)
            }else{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(white: 0.7))
                    .frame(maxWidth: 100, maxHeight: 130)
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
                                Text("\(Int(averageNot))")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                                Circle()
                                    .trim(from: 0, to: Double(averageNot)/100)
                                    .stroke(colorNot, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                                    .rotationEffect(.degrees(-90))
                                    .frame(maxWidth: 40)
                            }
                    
                }
                Text(tvShow.description)
                    .foregroundStyle(.gray)
                    .lineLimit(5)
            }
                
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.black)
        
    }
}

#Preview {
    TVShowCell(tvShow: TVShow.previewTVShow)
        
}
