//
//  NetworkingProtocol.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import Foundation

protocol NetworkingProtocol: Sendable {
    func fetchTopCards() async throws -> [CardGrid]
    
    func fetchBanners() async throws -> [Banner]
}
