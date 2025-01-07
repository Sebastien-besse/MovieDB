//
//  HomeView.swift
//  MovieDB
//
//  Created by Sebastien Besse on 06/01/2025.
//

import SwiftUI

struct HomeView: View {
    let tvShow = TVShow.previewsTVShow
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ForEach(tvShow) { show in
                        TVShowCell(tvShow: show)
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
    }
}

#Preview {
    HomeView()
}
