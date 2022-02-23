//
//  ContentView.swift
//  NavigationBarWithSwiftUI
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink("次の画面へ", destination: SecondView())
                .navigationBarTitle("1番目", displayMode: .inline)
                .background(NavigationConfigurator { nc in
                    // UIKitでNavigationBarのスタイルを変更するのと同じ方法でOK
                    nc.navigationBar.barTintColor = .blue
                    nc.navigationBar.tintColor = .white
                    nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
