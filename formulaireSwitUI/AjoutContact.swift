//
//  AjoutContact.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import SwiftUI

struct AjoutContact: View {
    @EnvironmentObject var appModel : AppModel
    @State private var nom: String = ""
    @State private var prenom: String = ""
    @State private var isFav: Bool =  true
    @Environment(\.presentationMode) var presentationMode
  
    var body: some View {
        NavigationView{
    
       
        List{
        TextField("Nom", text: $nom)
            .disableAutocorrection(true)
            .keyboardType(.default)
            .padding()
        TextField("Prenom", text: $prenom)
            .disableAutocorrection(true)
            .keyboardType(.default)
            .padding()
        Toggle("Favoris", isOn: $isFav)
               .toggleStyle(SwitchToggleStyle(tint: .pink))
        Spacer()
   
        }.navigationBarTitle("Contact", displayMode: .inline)
        .toolbar{
            ToolbarItem(placement: .confirmationAction){
                Button("Save"){
                    appModel.addContact(firstName: prenom, lastName: nom, isFavorite: isFav)
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        
            
          
       
        }
         
        
        
    }
}


struct AjoutContact_Previews: PreviewProvider {
    static var previews: some View {
        AjoutContact()
    }
}
