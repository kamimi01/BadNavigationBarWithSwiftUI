//
//  ContentView.swift
//  NavigationBarWithSwiftUI
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.backgroundColor = .blue
        navBarAppearance.tintColor = .white
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }

    var body: some View {
        NavigationView {
            NavigationLink("次の画面へ", destination: SecondView())
                .navigationBarTitle("1番目", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
