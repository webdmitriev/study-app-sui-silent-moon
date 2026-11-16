//
//  Button.ext.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

/*
 Button("Get Started") { }
     .buttonStyle(.app())

 Button("Skip") { }
     .buttonStyle(.app(background: .clear, textColor: .blueGray))
 */

import SwiftUI

struct AppButtonStyle: ButtonStyle {
    var background: Color = .pearlGray
    var textColor: Color = .blueDarkGray

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom(CrimsonText.bold.rawValue, size: 12))
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(background, in: RoundedRectangle(cornerRadius: .infinity))
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

extension ButtonStyle where Self == AppButtonStyle {
    static func app(background: Color = .pearlGray, textColor: Color = .white) -> AppButtonStyle {
        AppButtonStyle(background: background, textColor: textColor)
    }
}
