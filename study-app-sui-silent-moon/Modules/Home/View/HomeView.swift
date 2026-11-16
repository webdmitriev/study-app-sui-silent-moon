//
//  HomeView.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 15.11.2026.
//

import SwiftUI

struct HomeView: View {
    
    let vm = HomeViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                HeaderView()
                
                CardsGridView(cards: vm.cardsTop)
                
                if let banner = vm.banner {
                    BannerView(banner: banner)
                }
            }
        }
        .task {
            await vm.loadCardsTop()
            await vm.loadBanners()
        }
    }
}
