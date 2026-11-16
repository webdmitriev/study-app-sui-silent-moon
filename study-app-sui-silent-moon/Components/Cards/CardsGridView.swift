//
//  CardsGrid.swift
//  study-app-sui-silent-moon
//
//  Created by Олег Дмитриев on 16.11.2026.
//

import SwiftUI

struct CardsGridView: View {
    let columns: [GridItem] = [
        GridItem(spacing: 18),
        GridItem(spacing: 18)
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 18) {
            ForEach(0..<5) { item in
                CardGridView(image: "image-01", title: "Basics", subTitle: "Course", timer: "3-10 min") {
                    print("tap")
                }
            }
        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

struct CardGridView: View {
    var image: String
    var title: String
    var subTitle: String
    var timer: String
    var action: (() -> Void)? = nil
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack(spacing: 30) {
                VStack(spacing: 6) {
                    Text(title)
                        .gridCardTitle(textColor: .lightPeach)

                    Text("\(subTitle)".uppercased())
                        .gridCardSubTitle(textColor: .lightPeach)
                }
                
                HStack {
                    Text(timer)
                        .gridCardSubTitle(textColor: .lightPeach)
                    
                    if let action {
                        Button("Start".uppercased(), action: action)
                            .buttonStyle(.app(textColor: .blueDarkGray))
                    }

                }
            }
            .padding(14)
        }
        .frame(height: 210)
        .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
    }
}
