//
//  MenuView.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 14/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "bell.fill")
                    .imageScale(.large)
                    .padding()
                Spacer()
                Text("Notifications")
                    .font(.headline)
                .padding()
                Spacer()
            }.padding(.top, 100)
            HStack {
                Spacer()
                Image(systemName: "envelope.fill")
                    .imageScale(.large)
                    .padding()
                    .offset(x:-7)
                Spacer()
                Text("Messages")
                    .font(.headline)
                .padding()
                Spacer()
            }
                .padding(.top, 30)
            HStack {
                Spacer()
                Image(systemName: "gear")
                    .imageScale(.large)
                    .padding()
                .offset(x:-11)
                Spacer()
                Text("Settings")
                    .font(.headline)
                .padding()
                Spacer()
            }
                .padding(.top, 30)
            Spacer()
        }.padding()
            .foregroundColor(.white)
        .frame(maxWidth: .infinity, alignment: .leading)
            .background(RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: .center, startRadius: 100, endRadius: 500))
        .edgesIgnoringSafeArea(.all)
        .shadow(radius: 3)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
