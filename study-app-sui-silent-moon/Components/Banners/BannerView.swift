//
//  BannerView.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct BannerView: View {
    var banner: Banner
    
    var body: some View {
        HStack(spacing: 18) {
            VStack(spacing: 8) {
                Text(banner.title)
                    .bannerTitle()

                HStack(spacing: 5) {
                    Text("\(banner.subTitle)".uppercased())
                        .bannerSubTitle()
                    
                    Text("•")
                        .bannerSubTitle()
                    
                    Text("\(banner.timer)".uppercased())
                        .bannerSubTitle()
                    
                    Spacer()
                }
            }

            Spacer()

            Button { } label: {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 42))
                    .foregroundStyle(.white)
            }
        }
        .padding(.vertical, 22)
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity)
        .background(
            Image(banner.image)
                .resizable()
                .scaledToFill()
                .clipped()
        )
        .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

struct Banner: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
    var subTitle: String
    var timer: String
    var videoLink: String
}
