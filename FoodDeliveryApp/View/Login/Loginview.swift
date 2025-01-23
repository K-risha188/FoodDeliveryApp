//
//  Loginview.swift
//  FoodDeliveryApp
//
//  Created by student on 23/01/25.
//

import SwiftUI

struct Loginview: View {
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth,height: .screenHeight)
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height:60)
                    .padding(.top,50)
                Spacer()
                
                Text("Loging")
                    .font(.customfont(.semibold,fontSize:30))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,400)
                    .padding(.leading,15)
                Spacer()
                
                Text("Enter your email and password")
                    .font(.customfont(.medium,fontSize: 5))
                    
                
            }
        }
    }
}

#Preview {
    Loginview()
}
