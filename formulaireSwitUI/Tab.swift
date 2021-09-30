//
//  Tab.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import SwiftUI

struct Tab: View {
    
    var body: some View {
        
    TabView(){
        ContactView()
            .tabItem {
                Label("Contact", systemImage: "book")
                
            }.tag(0)
        FavorisView()
            .tabItem {
                Label("Favoris", systemImage: "star")
                
            }
 
       
             }.tag(1)
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
