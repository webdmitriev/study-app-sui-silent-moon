//
//  Text.ext.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 15.11.2026.
//

import SwiftUI

extension Text {
    func crimsonText(name: CrimsonText = .regular, size: CGFloat = 16) -> some View {
        self.font(.custom(name.rawValue, size: size))
    }
    
    func headerTitle() -> some View {
        self
            .crimsonText(name: .bold, size: 28)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.blueDarkGray)
    }
    
    func headerSubTitle() -> some View {
        self
            .crimsonText(name: .regular, size: 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.blueGray)
    }
    
    func gridCardTitle(textColor: Color = .blueDarkGray) -> some View {
        self
            .crimsonText(name: .bold, size: 18)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(textColor)
    }
    
    func gridCardSubTitle(textColor: Color = .blueDarkGray) -> some View {
        self
            .crimsonText(name: .regular, size: 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(textColor)
    }
}
