//
//  appleDetail.swift
//  FoodDeliveryApp
//
//  Created by student on 18/02/25.
//

import SwiftUI

struct appleDetail: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    ZStack {
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .blur(radius: 20)
                            .opacity(0.3)
                            .overlay(Color.gray.opacity(0.1))
                            .edgesIgnoringSafeArea(.all)
                        
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 290, height: 290)
                            .shadow(radius: 10)
                    }
                    HStack{
                        Text("Natural Red Apple")
                            .font(.customfont(.semibold, fontSize:25))
                            .padding(.trailing,100)
                        
                        Image("fav")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    Text("1kg, Price")
                        .font(.customfont(.regular, fontSize: 20))
                        .opacity(0.5)
                        .padding(.trailing,260)
                    
                    HStack {
                       //Create clickable add and subtrack button
                    }
                }
            }
        }
    }
}
#Preview {
    appleDetail()
}
