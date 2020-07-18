//
//  Product.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 16/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Product: View {
    @Environment(\.presentationMode) var presentationMode
    @State var index = 0
    var images = ["laptop", "laptop1", "laptop2"]
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrow.left").padding().font(.headline).onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
                Spacer()
                Text("product")
                Spacer()
                Image(systemName: "ellipsis").padding().font(.headline)
            }
            Divider()
            ScrollView{
                Spacer()
            VStack(spacing: 20) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(width: 350, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            HStack{
                VStack(alignment:.leading){
                    Text("Toshiba Laptop").font(.headline).bold().padding(5)
                    Text("#2017 #i7 #VFM").font(.callout).padding(5)
                }.padding()
                
                VStack {
                    Text("₹2,00,000").font(.title).bold().padding(5)
                    Text("Free Shipping").font(.callout).padding(5)
                }
            }
                Text("This is a 2017 i7 good quality laptop, only 30 pcs are available. Contact for bulk orders!").font(.caption).padding()
                
            Divider()
            HStack{
                Image("face")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .mask(Circle())
                    .shadow(radius: 2)
                VStack(alignment:.leading){
                    Text("Alessandra Carmen").font(.subheadline).bold()
                    Text("@ New York").font(.footnote)
                }.padding(5)
                Image(systemName: "message.fill").padding(.horizontal)
                Image(systemName: "phone.fill").padding(.horizontal)
            }
                Divider()
                HStack {
                    MainButton(name: "Add to Cart", img: "cart.fill").padding().fixedSize()
                    Divider()
                    VStack {
                        Text("View Statistics").font(.caption).padding(2)
                        Image(systemName: "chevron.right.circle.fill").padding(2)
                    }
                }
        Spacer()
        }
        }
    }
}


struct Product_Previews: PreviewProvider {
    static var previews: some View {
        Product()
    }
}


struct PagingView<Content>: View where Content: View {

    @Binding var index: Int
    let maxIndex: Int
    let content: () -> Content

    @State private var offset = CGFloat.zero
    @State private var dragging = false

    init(index: Binding<Int>, maxIndex: Int, @ViewBuilder content: @escaping () -> Content) {
        self._index = index
        self.maxIndex = maxIndex
        self.content = content
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        self.content()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                }
                .content.offset(x: self.offset(in: geometry), y: 0)
                .frame(width: geometry.size.width, alignment: .leading)
                .gesture(
                    DragGesture().onChanged { value in
                        self.dragging = true
                        self.offset = -CGFloat(self.index) * geometry.size.width + value.translation.width
                    }
                    .onEnded { value in
                        let predictedEndOffset = -CGFloat(self.index) * geometry.size.width + value.predictedEndTranslation.width
                        let predictedIndex = Int(round(predictedEndOffset / -geometry.size.width))
                        self.index = self.clampedIndex(from: predictedIndex)
                        withAnimation(.easeOut) {
                            self.dragging = false
                        }
                    }
                )
            }
            .clipped()

            PageControl(index: $index, maxIndex: maxIndex)
        }
    }

    func offset(in geometry: GeometryProxy) -> CGFloat {
        if self.dragging {
            return max(min(self.offset, 0), -CGFloat(self.maxIndex) * geometry.size.width)
        } else {
            return -CGFloat(self.index) * geometry.size.width
        }
    }

    func clampedIndex(from predictedIndex: Int) -> Int {
        let newIndex = min(max(predictedIndex, self.index - 1), self.index + 1)
        guard newIndex >= 0 else { return 0 }
        guard newIndex <= maxIndex else { return maxIndex }
        return newIndex
    }
}

struct PageControl: View {
    @Binding var index: Int
    let maxIndex: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0...maxIndex, id: \.self) { index in
                Circle()
                    .fill(index == self.index ? Color.white : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding(15)
    }
}
}
