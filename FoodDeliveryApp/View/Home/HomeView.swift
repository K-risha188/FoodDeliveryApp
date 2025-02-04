//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by student on 04/02/25.
//

import SwiftUI

struct HomeView: View{
    var body: some View{
        NavigationStack{
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
                
                HStack{
                    Image("search")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20)
                    
                    Text("Search Store")
                        .foregroundColor(.gray.opacity(0.7))
            }
        }
    }
}

#Preview {
    HomeView()
}

