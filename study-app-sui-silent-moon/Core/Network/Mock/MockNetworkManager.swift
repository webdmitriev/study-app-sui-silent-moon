//
//  MockNetworkManager.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import Foundation

final class MockNetworkManager: NetworkingProtocol {
    var delay: Duration = .milliseconds(360)
    
    func fetchTopCards() async throws -> [CardGrid] {
        try await Task.sleep(for: delay)
        return Self.mockData
    }
    
    func fetchBanners() async throws -> [Banner] {
        try await Task.sleep(for: delay)
        return Self.mockBanners
    }
    
    func fetchCardsRecommend() async throws -> CardRecommend {
        try await Task.sleep(for: delay)
        return Self.mockCardsRecommend
    }
}

extension MockNetworkManager {
    static let mockData: [CardGrid] = [
        CardGrid(image: "image-01", title: "Basics", subTitle: "COURSE", timer: "3-10 min"),
        CardGrid(image: "image-02", title: "Relaxation", subTitle: "MUSIC", timer: "8-24 min"),
    ]
}

extension MockNetworkManager {
    static let mockBanners: [Banner] = [
        Banner(image: "banner-01", title: "Daily Thought", subTitle: "MEDITATION", timer: "3-10 MIN", videoLink: "/"),
        Banner(image: "banner-01", title: "Hard Dancing", subTitle: "Music", timer: "24-28 MIN", videoLink: "/")
    ]
}

extension MockNetworkManager {
    static let mockCardsRecommend: CardRecommend = CardRecommend(title: "Recomended for you", cardsRecommend: [
        CardsRecommend(image: "recommend-01", title: "Focus", subTitle: "Meditation", timer: "3-10 min"),
        CardsRecommend(image: "recommend-02", title: "Happyness", subTitle: "Music", timer: "12-24 min"),
        CardsRecommend(image: "recommend-01", title: "Hard", subTitle: "Motivation", timer: "8-16 min"),
    ])
}
