//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.createContacts()
    
    var body: some View {
        TabView {
            NavigationView {
                Contacts(persons: persons)
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Contacts")
            }
            NavigationView{
                Numbers(persons: persons)
            }
            .tabItem {
                Image(systemName: "phone.fill")
                Text("Numbers")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
