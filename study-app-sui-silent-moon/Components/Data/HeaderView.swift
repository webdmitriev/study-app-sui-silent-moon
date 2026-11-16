//
//  HeaderView.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct HeaderView: View {
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
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}
