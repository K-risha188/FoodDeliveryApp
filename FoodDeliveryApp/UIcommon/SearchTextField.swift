import SwiftUI

struct SearchTextField: View {
    @Binding var searchText: String
    
    var placeholder: String
    @State private var isEditing = false
    
    var body: some View {
        
        HStack{
            Image("search")
                .resizable()
                .scaledToFit()
                .frame(width:20)
                .padding(.horizontal,10)
        
            TextField(placeholder, text: $searchText)
                .padding(5)
                .cornerRadius(15)
                .font(.customfont(.regular, fontSize:20))
            
            if !searchText.isEmpty{
                Button{
                    self.searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(.vertical, 10)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
        .shadow(radius: 5)
    
    }
}

