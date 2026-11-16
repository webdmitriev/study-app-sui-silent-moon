//
//  HomeViewModel.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

@Observable
final class HomeViewModel {
    private let network: NetworkingProtocol
    
    init(network: NetworkingProtocol = MockNetworkManager()) {
        self.network = network
    }
    
    var cardsTop: [CardGrid] = []
    var banners: [Banner] = []
    var banner: Banner?
    
    func loadCardsTop() async {
        self.cardsTop = (try? await network.fetchTopCards()) ?? []
    }
    
    func loadBanners() async {
        let loaded = (try? await network.fetchBanners()) ?? []
        self.banners = loaded
        self.banner = loaded.randomElement()
    }
}
