//
//  ContentView.swift
//  Wather App
//
//  Created by Lucas de Amorim on 14/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
#if os(iOS)
        MinhaViewControllerRepresentable()
            .ignoresSafeArea()
#else
        Text("UIKit so funciona quando o destino de execucao e iOS/iPadOS.")
            .padding()
#endif
    }
}
