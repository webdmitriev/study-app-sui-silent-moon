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
}

extension MockNetworkManager {
    static let mockData: [CardGrid] = [
        CardGrid(image: "image-01", title: "Basics", subTitle: "COURSE", timer: "3-10 min"),
        CardGrid(image: "image-02", title: "Relaxation", subTitle: "MUSIC", timer: "8-24 min"),
    ]
}
