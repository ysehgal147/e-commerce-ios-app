//
//  Search.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Search: View {
    @State private var text = ""
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image(systemName: "line.horizontal.3.decrease.circle").padding().font(.headline)
                    Spacer()
                    Text("search")
                    Spacer()
                    Image(systemName: "ellipsis").padding().font(.headline)
                }
                Divider()
                
            }
            ScrollView {
                VStack{
                    VStack {
                        TextField("Search over 20,000 items!", text: $text)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                    }
                    Spacer()
                    Image("search")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding()
                        .offset(x:20,y:100)
                }
            }
        }.tabItem {
            Image(systemName: "magnifyingglass.circle.fill")
        }
    }
}

