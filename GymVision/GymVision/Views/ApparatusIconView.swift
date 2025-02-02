//
//  ApparatusIconView.swift
//  GymVision
//
//  Created by Vanessa Chambers on 4/2/24.
//

import SwiftUI

struct ApparatusIconView: View {
    var apparatus: Apparatus
        
    @Environment(\.colorScheme) var colorScheme
    
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.primaryIcon) // Adjust the color as needed
                    .frame(width: calculateSize(), height: calculateSize())  // Adjust the size as needed
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.primaryBorder, lineWidth: 1.5) // Border Color
                    )
                
                Text(apparatus.rawValue)
                    .font(AppFonts.SmallButtonText.font) // Adjust the font as needed
                    .foregroundColor(Color.secondaryIcon)
            }.aspectRatio(1.0, contentMode: .fit)
        }
    
    // Function to calculate the width of the background square
        private func calculateSize() -> CGFloat {
            let size = apparatus.rawValue.size(withAttributes: [.font: UIFont.systemFont(ofSize: 14)])
            return size.width + 8 // padding
        }
}

#Preview {
    ApparatusIconView(apparatus: Apparatus.VT)
}
