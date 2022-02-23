//
//  NavigationBarModifier.swift
//  NavigationBarWithSwiftUI2
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: UIColor?

    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        // backgroundcolorはclearに統一
        coloredAppearance.backgroundColor = .clear
        // titleの色はここで統一
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.green]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        // tintcolorの色もここで統一（back buttonの色とか）
        UINavigationBar.appearance().tintColor = .orange
    }

    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                // ここで指定したい色のColorを一番上に来るように被せる
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {
    func navigationBarColor(_ backgrondColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgrondColor))
    }
}
