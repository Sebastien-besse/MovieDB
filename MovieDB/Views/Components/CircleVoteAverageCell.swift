//
//  CircleVoteAverageCell.swift
//  MovieDB
//
//  Created by Sebastien Besse on 26/01/2025.
//

import SwiftUI

struct CircleVoteAverageCell: View {
    let tvShow : TVShow
    
    var satisfaction : Int{
        return Int(tvShow.voteAverage * 10)
    }
    
    var colorNot: Color{
        switch satisfaction{
        case 0...49:
            return .red
        case 50...81:
            return  .orange
        case 82...100:
            return .green
        default: return.black
        }
    }
    var body: some View {
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
}

#Preview {
    CircleVoteAverageCell(tvShow: .previewTVShow)
}
