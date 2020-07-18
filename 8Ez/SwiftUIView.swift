//
//  SwiftUIView.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 12/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        GeometryReader { geometry in
        TabView{
            DiscoverTab()
            Profile()
            Camera()
            Favourites()
            Search()
            }.accentColor(.red)
        }
    }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}



