//
//  Discover.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct DiscoverTab: View {
    @State var showMenu = false
    var body: some View {
        let drag = DragGesture()
        .onEnded {
            if $0.translation.width < -100 {
                withAnimation {
                    self.showMenu.toggle()
                }
            }
        }
            return GeometryReader { geometry in
            ZStack {
            Showcase(showMenu: self.$showMenu)
            .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(x: self.showMenu ? geometry.size.width/(1.5) : 0)
                .disabled(self.showMenu ? true : false)
            }.gesture(drag)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/(1.5))
                    .transition(.move(edge: .leading))
                }
        }.tabItem {
            Image(systemName: "circle.grid.2x2.fill")
        }
    }
}

struct Showcase: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    withAnimation {
                       self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3.decrease").padding()
                }
                Spacer()
                MainButton(name: "Discover", img: "chevron.down")
                Spacer()
                Image(systemName: "cart").padding()
            }
            Divider()
            ScrollView{
                Slider()
                Spacer()
                Divider()
                Slider()
                Spacer()
                Divider()
                Slider()
                Spacer()
                Divider()
                Slider()
            }
        }.tabItem {
            Image(systemName: "circle.grid.2x2.fill")
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverTab()
    }
}
