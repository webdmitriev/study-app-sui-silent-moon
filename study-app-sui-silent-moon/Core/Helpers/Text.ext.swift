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
}
