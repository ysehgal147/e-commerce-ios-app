//
//  MainView.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 14/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showMenu = false
    var body: some View {
               Text("Options")
         .contextMenu {
             Button(action: {
                 // change country setting
             }) {
                 Text("Choose Country")
             }

             Button(action: {
                 // enable geolocation
             }) {
                 Text("Detect Location")
             }
         }
    }
    }


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


