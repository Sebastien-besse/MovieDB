//
//  ButtonFilterView.swift
//  MovieDB
//
//  Created by Sebastien Besse on 23/01/2025.
//

import SwiftUI

struct ButtonFilterView: View {
    @Binding var selectedFilter : FilterType
    var body: some View {
        HStack{
            ButtonFilter(name: "série populaire", isFilter: selectedFilter == .popular, action: {selectedFilter = .popular})
            ButtonFilter(name: "Mieux notées", isFilter: selectedFilter == .rated, action: {selectedFilter = .rated})
            ButtonFilter(name: "En cours", isFilter: selectedFilter == .airing, action: {selectedFilter = .airing})
        }
    }
}

#Preview {
    @Previewable @State var selectedFilter : FilterType = .popular
    ButtonFilterView(selectedFilter: $selectedFilter)
        .padding()
}

enum FilterType {
    case popular
    case rated
    case airing
}

struct ButtonFilter: View {
    let name: String
    let isFilter : Bool
    let action: ()-> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(name)
                .font(.caption2)
                .foregroundStyle(.white)
                .bold()
                .padding()
                .frame( maxWidth: isFilter ? 140 : 130, maxHeight: isFilter ? 43 : 40)
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .animation(.linear(duration: 0.9), value: isFilter)
                .overlay {
                    if !isFilter{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                            .opacity(0.2)
                    }else{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 2)
                    }
                }
            
        }
    }
}
