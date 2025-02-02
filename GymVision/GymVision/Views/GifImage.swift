//
//  GifImage.swift
//  GymVision
//
//  Created by Vanessa Chambers on 3/28/24.
//
// This was created following the video tutorial created by Pedro Rojas on 16/08/21, which can be found at this link: https://www.youtube.com/watch?v=9fz8EW-dX-I
// GitHub: https://github.com/pitt500/GifView-SwiftUI/blob/main/GifView_SwiftUI/GifView_SwiftUI/GifImage.swift

import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    private let name: String
    private let cornerRadius: CGFloat
    
    init(_ name: String, cornerRadius: CGFloat = 0) {
        self.name = name
        self.cornerRadius = cornerRadius
    }
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        
        let data = try! Data(contentsOf: url)
        
        webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        
        webView.layer.cornerRadius = cornerRadius
        webView.layer.masksToBounds = true
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

#Preview {
    GifImage("back_handspring_so_3")
}
