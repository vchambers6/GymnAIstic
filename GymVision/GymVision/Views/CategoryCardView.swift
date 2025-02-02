//
//  CategoryCardView.swift
//  GymVision
//
//  Created by Vanessa Chambers on 4/4/24.
//

import SwiftUI

struct CategoryCardView: View {
    
    var mainText: String
    var popOverText: String
    
    @State private var showingPopover = false
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button {
            self.showingPopover = true
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.secondaryIcon)
                    .frame(maxWidth: .infinity).frame(height: 45)
                    // MARK: this should change -- for dark mode
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.primaryBorder, lineWidth: 1.5)
                    )
                
                Text("Category: \(mainText)")
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .font(AppFonts.MediumButtonText.font)
                    .foregroundColor(Color.primaryIcon)
            }.aspectRatio(1.0, contentMode: .fit)
        }.popover(isPresented: $showingPopover, content: {
            ZStack {
                Color.secondaryBG.ignoresSafeArea(.all)
                Text(popOverText).font(AppFonts.PlainTextSemiBold.font).foregroundStyle(Color.primaryAccent)
                    .padding()
            }
            
        })
    }
}

#Preview {
    CategoryCardView(mainText: "Acrobatic Flight", popOverText: #"""Group 5 - acrobatic flight"""#)
}
