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
    
    // Приветствие по времени суток
    private var greeting: String {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 5..<12:  return "Good Morning"
        case 12..<18: return "Good Afternoon"
        case 18..<23: return "Good Evening"
        default:      return "Good Night"
        }
    }
    
    private var userName: String = "Oleg Dmitriev"
    
    var body: some View {
        VStack(spacing: 40) {
            Image("logotype")
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            
            VStack(spacing: 6) {
                Text("\(greeting), \(userName)")
                    .headerTitle()

                Text("We Wish you have a good day")
                    .headerSubTitle()
            }
        }
        .padding(.top, lengthHeight)
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}
