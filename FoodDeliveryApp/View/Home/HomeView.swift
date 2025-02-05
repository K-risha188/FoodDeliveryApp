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
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

