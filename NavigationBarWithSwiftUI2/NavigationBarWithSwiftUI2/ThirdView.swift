//
//  ThirdView.swift
//  NavigationBarWithSwiftUI2
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationBarTitle("3番目", displayMode: .inline)
            .navigationBarColor(.yellow)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
