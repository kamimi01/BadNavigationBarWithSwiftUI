//
//  SecondView.swift
//  NavigationBarWithSwiftUI
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationLink("2番目の画面だよ", destination: ThirdView())
            .navigationBarTitle("2番目", displayMode: .inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
