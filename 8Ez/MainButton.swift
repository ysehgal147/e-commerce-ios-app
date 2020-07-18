//
//  MainButton.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct MainButton: View {
    @State var name : String
    @State var img : String
    var body: some View {
        Group {
            Button(action: {}) {
                HStack{
                    Text(name).bold()
                        .padding(.horizontal)
                    Image(systemName: img)
                }
                .padding()
            }
            .foregroundColor(Color.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(30)
            .shadow(radius: 2)
        }
    }
}

