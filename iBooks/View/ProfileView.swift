//
//  ProfileView.swift
//  iBooks
//
//  Created by MAC43 on 2/12/22.
//

import SwiftUI

struct ProfileView: View {
    // reactivo
    @State var name = "Miguel Medina"
    @StateObject var profileViewModel = ProfileViewModel()
    
    var body: some View {
        VStack{
            Text(name)
                .font(.title)
            
            Button {
                name = "Angel"
                profileViewModel.saludar(name: "Angel")
            } label: {
                Text("Cambiar nombre")
            } .padding(.top)
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
