//
//  ContentView.swift
//  app
//
//  Created by mcpeaps_HD on 18/03/2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        ZStack {
            WebView(request: URLRequest(url: URL(string: "https://comboompunktsucht.serveblog.net")!))
                
        }
        
    }
}

#if os(iOS)
struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}
#elseif os(macOS)
struct WebView: NSViewRepresentable {
    let request: URLRequest
    
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.load(request)
    }
    
}
#endif

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
