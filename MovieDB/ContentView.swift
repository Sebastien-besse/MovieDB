//
//  ContentView.swift
//  MovieDB
//
//  Created by Sebastien Besse on 30/12/2024.
//

import SwiftUI

struct ContentView: View {
    let tvShowRepo = TVShowRepo()
    @State private var items : [TVShow] = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Spacer()
            ScrollView {
                ForEach(items){ item in
                    
                        Text(item.title)
                            .padding()
                    
                    
                }
            }
            
            Spacer()
            Button {
                Task{
                    do{
                        let restItems = try await tvShowRepo.getTVShowAiring()
                        for restItem in restItems.results {
                            let item = TVShowMapper().map(rest: restItem)
                            items.append(item)
                        }
                    }catch{
                        print("\(error)")
                    }
                   
                }
            } label: {
                Text("Test API")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(maxWidth: 250, maxHeight: 50)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
