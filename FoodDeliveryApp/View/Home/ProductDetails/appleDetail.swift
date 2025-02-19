//
//  appleDetail.swift
//  FoodDeliveryApp
//
//  Created by student on 18/02/25.
//

import SwiftUI

struct appleDetail: View {
    @State private var count = 1
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
                            .font(.customfont(.bold, fontSize:25))
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
                        Button(action: {
                            count -= 1
                        }) {
                            Image("subtack")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding()
                        }
                        
                        RoundedRectangle(cornerRadius:20)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Text("\(count)")
                                    .font(.customfont(.semibold, fontSize:20))
                            )
                        
                        Button(action: {
                            count += 1
                        }) {
                            Image("add_green")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding()
                        }
                        
                        Text("$4.99")
                            .font(.customfont(.semibold, fontSize:20))
                            .padding(.leading, 120)
                    }
                    .padding(.trailing, 15)
                    .padding(.top,30)
                    
                    Divider()
                        .frame(width:350)
                        .background(Color.gray.opacity(0.3))
                        .padding(.top,10)
                }
                
                HStack{
                    Text("Product Detail")
                        .font(.customfont(.semibold, fontSize: 20))
                        .opacity(0.85)
                    
                    //Continue from Dropdown details button
                }
                .padding(.top,15)
            }
        }
    }
}
#Preview {
    appleDetail()
}
