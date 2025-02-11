//
//  Meat.swift
//  FoodDeliveryApp
//
//  Created by student on 11/02/25.
//

import SwiftUI

struct Meat: View{
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            .frame(width: 180, height: 300)
            .padding(.leading, 20)
            .padding(.top, 20)
            .overlay(
                VStack{
                    Image("broiler_chicken")
                        .resizable()
                        .frame(width: 120, height: 80)
                        .padding(.top,20)
                    
                    Text("Broiler Chicken")
                        .font(.customfont(.semibold, fontSize :18))
                        .padding(.top,20)
                    
                    Text("1kg, Priceg")
                        .font(.customfont(.regular, fontSize: 18))
                        .foregroundColor(.black.opacity(0.4))
                        .padding(.trailing,38)
                        .padding(.top,5)
                    
                    HStack{
                        Text("$4.99")
                            .font(.customfont(.semibold,fontSize : 20))
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.leading,20)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.primaryApp)
                            .frame(width:50 , height: 50)
                            .overlay(
                                Image("add")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    
                            )
                            .padding(.leading,40)
                        
                    }
                    .padding(.top,40)
                }
            )
        
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            .frame(width: 180, height: 300)
            .padding(.leading, 20)
            .padding(.top, 20)
            .overlay(
                VStack{
                    Image("beef_bone")
                        .resizable()
                        .frame(width: 120, height: 80)
                        .padding(.top,20)
                    
                    Text("Beef Bone")
                        .font(.customfont(.semibold, fontSize :18))
                        .padding(.top,20)
                        .padding(.trailing,50)
                    
                    Text("1kg, Priceg")
                        .font(.customfont(.regular, fontSize: 18))
                        .foregroundColor(.black.opacity(0.4))
                        .padding(.trailing,45)
                        .padding(.top,5)
                    
                    HStack{
                        Text("$4.99")
                            .font(.customfont(.semibold,fontSize : 20))
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.leading,20)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.primaryApp)
                            .frame(width:50 , height: 50)
                            .overlay(
                                Image("add")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    
                            )
                            .padding(.leading,40)
                        
                    }
                    .padding(.top,40)
                }
            )
    }
}
#Preview {
    Meat()
}
