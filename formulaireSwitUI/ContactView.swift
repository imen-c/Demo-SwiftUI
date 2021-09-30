//
//  ContactView.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import SwiftUI

struct ContactView: View {
    @EnvironmentObject var appmodel: AppModel    //@State  var isFavorite : Bool
   
    @State var sheetispresented : Bool = false
   
    var body: some View {
        NavigationView{
        
     
            List(appmodel.contacts){ contact in
                      HStack{
                         Text(contact.firstName )
                         Text(contact.lastName)
                        
                       }
                
            
        
              }    .navigationBarTitle("Contact", displayMode: .inline)
                   .sheet(isPresented: $sheetispresented, content: {
                   AjoutContact()
              })
                   .toolbar{Button(action: {sheetispresented = true}){
                    Label("plus", systemImage: "plus")}}
        
        }.listStyle(InsetGroupedListStyle())
        
        
             
        
    }
        
        
    }


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
