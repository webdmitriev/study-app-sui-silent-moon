//
//  CardsGrid.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct CardsGridView: View {
    @Environment(\.horizontalSizeClass) private var sizeClass

    private let spacing: CGFloat = 18

    private var columns: [GridItem] {
        let count = sizeClass == .regular ? 3 : 2
        return Array(repeating: GridItem(.flexible(), spacing: spacing), count: count)
    }
    
    var cards: [CardGrid] = []

    var body: some View {
        LazyVGrid(columns: columns, spacing: 18) {
            ForEach(cards, id: \.id) { card in
                CardGridView(card: card)
            }
        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

struct CardGridView: View {
    var card: CardGrid
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(card.image)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack(spacing: 30) {
                VStack(spacing: 6) {
                    Text(card.title)
                        .gridCardTitle(textColor: .lightPeach)

                    Text("\(card.subTitle)".uppercased())
                        .gridCardSubTitle(textColor: .lightPeach)
                }
                
                HStack {
                    Text(card.timer)
                        .gridCardSubTitle(textColor: .lightPeach)
                    
                    Button("Start".uppercased()) {  }
                        .buttonStyle(.app(textColor: .blueDarkGray))
                }
            }
            .padding(14)
        }
        .frame(height: 210)
        .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
    }
}

struct CardGrid: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
    var subTitle: String
    var timer: String
}
