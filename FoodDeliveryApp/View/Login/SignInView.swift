//
//  LoginView.swift
//  FoodDeliveryApp
//
//  Created by student on 22/01/25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth,height: .screenHeight)
                VStack{
                    Image("sign_in_top")
                        .resizable()
                        .scaledToFill()
                        .padding(.bottom,500)
                    
                }
                
                VStack{
                    Text("Get your groceries \n with nectar")
                        .font(.customfont(.semibold, fontSize: 30))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,80)
                }
                VStack{
                    Text("or connect with social media")
                        .font(.customfont(.medium, fontSize: 15))
                        .foregroundColor(.black.opacity(0.5))
                        .padding(.top,350)
                    NavigationLink{
                        EmptyView()
                    }
                label:
                    {
                        HStack{
                            Text("Continue with Google")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                                .background(Color.blue)
                                .cornerRadius(20)
                                .padding()
                                .padding(.horizontal)
                        }
                    }
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

    
#Preview {
    SignInView()
    
}
