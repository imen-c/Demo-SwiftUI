//
//  FavorisView.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import SwiftUI

struct FavorisView: View {
    @EnvironmentObject var  appModel : AppModel
    var body: some View {
        NavigationView{
            List(appModel.contacts){ contact in
                         HStack{
                            Text(contact.firstName )
                            Text(contact.lastName)
                          }
                 }.navigationBarTitle("Favoris")
        }
    }
}

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView()
    }
}
