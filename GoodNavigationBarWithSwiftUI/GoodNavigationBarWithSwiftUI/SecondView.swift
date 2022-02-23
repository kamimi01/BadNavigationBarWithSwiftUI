//
//  SecondView.swift
//  GoodNavigationBarWithSwiftUI
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationLink("次の画面へ", destination: ThirdView())
            .navigationBarTitle("2番目", displayMode: .inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
