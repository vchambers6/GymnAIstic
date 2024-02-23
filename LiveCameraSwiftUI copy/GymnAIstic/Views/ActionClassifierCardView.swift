//
//  ActionClassifierCardView.swift
//  LiveCameraSwiftUI
//
//  Created by Vanessa Chambers on 2/22/24.
//

import SwiftUI

struct ActionClassifierCardView: View {
    var skillLabel: String = "No Skill Observed"
    var confidence: String = "No Confidence Level"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25).fill(.white.opacity(0.85))
            VStack {
                Text(skillLabel).font(.largeTitle).foregroundStyle(.black)
                Text("Confidence: \(confidence)").font(.title).foregroundStyle(.secondary)
            }.padding(4)
                .multilineTextAlignment(.center)
        }.frame(width: 300, height: 150)
    }
}

#Preview {
    ActionClassifierCardView()
}
