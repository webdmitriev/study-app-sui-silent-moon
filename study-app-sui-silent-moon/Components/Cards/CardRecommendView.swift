//
//  CardRecommendView.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct CardRecommendView: View {
    var cards: CardRecommend
    
    var body: some View {
        VStack(spacing: 10) {
            Text(cards.title)
                .recommendTitle()
                .padding(.horizontal, AppConstants.Layout.offsetPage)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 18) {
                    ForEach(cards.cardsRecommend) { card in
                        VStack(spacing: 8) {
                            Image(card.image)
                                .resizable()
                                .frame(maxWidth: .infinity)
                                .frame(height: 114)
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
                            
                            VStack(spacing: 4) {
                                Text(card.title)
                                    .cardRecommendTitle()
                                
                                HStack(spacing: 5) {
                                    Text("\(card.subTitle)".uppercased())
                                        .cardRecommendSubTitle()
                                    
                                    Text("•")
                                        .cardRecommendSubTitle()
                                    
                                    Text("\(card.timer)".uppercased())
                                        .cardRecommendSubTitle()
                                    
                                    Spacer()
                                }
                            }
                        }
                        .frame(width: 160)
                    }
                }
                .padding(.horizontal, AppConstants.Layout.offsetPage)
            }
        }
    }
}


struct CardRecommend {
    var title: String
    var cardsRecommend: [CardsRecommend]
}

struct CardsRecommend: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
    var subTitle: String
    var timer: String
}
