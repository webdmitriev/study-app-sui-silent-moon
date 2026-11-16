//
//  HeaderView.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) private var sizeClass
    
    private var lengthHeight: CGFloat {
        sizeClass == .regular ? 2 : 8
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Image("logotype")
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            
            VStack(spacing: 6) {
                Text("Good Morning, Oleg Dmitriev")
                    .headerTitle()

                Text("We Wish you have a good day")
                    .headerSubTitle()
            }
        }
        .padding(.top, lengthHeight)
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}
