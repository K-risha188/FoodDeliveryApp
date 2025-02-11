import SwiftUI

struct ExclusiveOffer: View {
    var body: some View {
      
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
                    .padding(.trailing,60)
                
                Text("1kg, Priceg")
                    .font(.customfont(.regular, fontSize:18))
                    .foregroundColor(.black.opacity(0.4))
                    .padding(.top,5)
                    .padding(.trailing,60)
                    
                
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
    
    
    RoundedRectangle(cornerRadius: 15)
        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        .frame(width: 180, height: 300)
        .padding(.top,10)
        .padding(.leading,15)
        .overlay(
            VStack{
                Image("apple")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 135)
                
                Text("Red Apple")
                    .font(.customfont(.semibold, fontSize:18))
                    .padding(.top,30)
                    .padding(.trailing,50)
                
                Text("1kg, Priceg")
                    .font(.customfont(.regular, fontSize:18))
                    .foregroundColor(.black.opacity(0.4))
                    .padding(.top,5)
                    .padding(.trailing,50)
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
        
#Preview {
    ExclusiveOffer()
}
