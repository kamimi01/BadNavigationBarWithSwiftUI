//
//  ContentView.swift
//  NavigationBarWithSwiftUI2
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink("次の画面へ", destination: SecondView())
                .navigationBarTitle("1番目", displayMode: .inline)
                .navigationBarColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
