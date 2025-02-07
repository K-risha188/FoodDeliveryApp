//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by student on 04/02/25.
//

import SwiftUI

struct HomeView: View{
    @State private var searchtext = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                HStack{
                    Image("location")
                        .resizable()
                        .scaledToFit()
                        .frame(width:30, height:30)
                    
                    Text("Vadadara, Gujarat")
                        .font(.customfont(.semibold, fontSize:20))
                }
                .padding(.bottom,25)
                
                SearchTextField(searchText: .constant(""), placeholder: "Search")
                    .padding(.horizontal,25)
                
                Image("banner_top")
                    .resizable()
                    .scaledToFit()
                    .padding(.top,10)
                    .padding(.horizontal,25)
                HStack{
                    Text("Exclusive Offer")
                        .font(.customfont(.semibold, fontSize:20))
                        .padding(.top,25)
                        .padding(.trailing,30)
                    Button{
                    }
                    label:{
                        Text("See all")
                            .font(.customfont(.regular, fontSize: 15))
                            .foregroundColor(.green)
                            .padding(.top,28)
                            .padding(.leading,120)
                        
                    }
                }
                .padding(.horizontal,25)
                
                ScrollView{
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    .frame(width: 180, height: 300)
                                    .padding(.top,10)
                                    .overlay(
                                        VStack{
                                            Image("banana")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 120)
                                            
                                            Text("Organic Bananas")
                                                .font(.customfont(.semibold, fontSize:18))
                                                .padding(.top,20)
                                                .padding(.trailing,10)
                                            
                                            Text("7pcs, Priceg")
                                                .font(.customfont(.regular, fontSize:18))
                                                .foregroundColor(.black.opacity(0.4))
                                                .padding(.top,5)
                                                .multilineTextAlignment(.trailing)
                                                .frame(alignment: .leading)
                                                .padding(.trailing,50)
                                            
                                            HStack{
                                                Text("$4.99")
                                                    .font(.customfont(.semibold, fontSize:20))
                                                    .foregroundColor(.black.opacity(0.8))
                                                    .padding(.top,40)
                                                
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(Color.primaryApp)
                                                    .frame(width: 50, height: 50)
                                                    .overlay(
                                                        Image("add")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width: 20, height: 20)
                                                            .foregroundColor(.primaryApp)
                                                    )
                                                    .padding(.leading,50)
                                                    .padding(.top,35)
                                                
                                            }
                                        }
                                    )
                                    .padding()
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    .frame(width: 180, height: 300)
                                    .padding(.top,10)
                                    .overlay(
                                        VStack{
                                            Image("apple")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 135)
                                            
                                            Text("Red Apple")
                                                .font(.customfont(.semibold, fontSize:18))
                                                .padding(.top,30)
                                                .multilineTextAlignment(.trailing)
                                            
                                            Text("1kg, Priceg")
                                                .font(.customfont(.regular, fontSize:18))
                                                .foregroundColor(.black.opacity(0.4))
                                                .padding(.top,5)
                                                .multilineTextAlignment(.trailing)
                                                .frame(alignment: .leading)
                                            
                                            HStack{
                                                Text("$4.99")
                                                    .font(.customfont(.semibold, fontSize:20))
                                                    .foregroundColor(.black.opacity(0.8))
                                                    .padding(.top,40)
                                                
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(Color.primaryApp)
                                                    .frame(width: 50, height: 50)
                                                    .overlay(
                                                        Image("add")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width: 20, height: 20)
                                                            .foregroundColor(.primaryApp)
                                                    )
                                                    .padding(.leading,50)
                                                    .padding(.top,35)
                                                
                                            }
                                        }
                                    )
                            }
                        }
                    }
                }
            }
        }
    }
}
    #Preview {
        HomeView()
    }
