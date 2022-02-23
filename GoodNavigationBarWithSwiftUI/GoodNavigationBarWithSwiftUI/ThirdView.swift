//
//  ThirdView.swift
//  GoodNavigationBarWithSwiftUI
//
//  Created by Mika Urakawa on 2022/02/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        Text("3番目の画面")
            .navigationBarTitle("3番目", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                // UIKitでNavigationBarのスタイルを変更するのと同じ方法でOK
                nc.navigationBar.barTintColor = .green
                nc.navigationBar.tintColor = .white
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
            })
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
