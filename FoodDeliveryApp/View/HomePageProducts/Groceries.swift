//
//  Groceries.swift
//  FoodDeliveryApp
//
//  Created by student on 11/02/25.
//

import SwiftUI

struct groceries: View {
    var body: some View{
        
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 120)
                .padding(.leading,20)
                .padding(.top,20)
                .foregroundColor(Color(hex: "#FDE2E2"))
                .overlay(
                    HStack{
                        Image("pulses")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(.trailing,10)
                            .padding(.top,20)
                        
                        Text("Pulses")
                            .font(.customfont(.semibold, fontSize: 25))
                            .foregroundColor(.primaryApp)
                            .padding(.top,20)
                            .padding(.trailing,30)
                    }
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 120)
                .padding(.leading,20)
                .padding(.top,20)
                .foregroundColor(Color(hex: "#E6F9E6"))
                .overlay(
                    HStack{
                        Image("rice")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(.trailing,10)
                            .padding(.top,20)
                        
                        Text("Rice")
                            .font(.customfont(.semibold, fontSize: 25))
                            .foregroundColor(Color(hex: "#E253A8"))
                            .padding(.top,20)
                            .padding(.trailing,30)
                    }
                )
                
    }
}
