//
//  ProfileViewModel.swift
//  iBooks
//
//  Created by MAC43 on 2/12/22.
//

import Foundation


// Debe heredar de ObservableObject

class ProfileViewModel: ObservableObject {
    
    func saludar(name: String) {
        print("Hola me llamo \(name)")
    }
}
