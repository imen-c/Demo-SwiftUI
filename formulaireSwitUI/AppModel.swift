//
//  AppModel.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import Foundation
struct Contact : Identifiable{
    var firstName : String
    var lastName : String
    var isFavorite : Bool = false
    let id = UUID()
}

class AppModel : ObservableObject{
    @Published var contacts = [Contact(firstName: "sailor", lastName: "Moon", isFavorite: true)]
    
    func addContact(firstName: String, lastName: String, isFavorite: Bool){
        contacts.append(Contact(firstName: firstName, lastName: lastName, isFavorite: isFavorite))
        
    }
}
