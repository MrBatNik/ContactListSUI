//
//  Contacts.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import SwiftUI

struct Contacts: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(person.fullName) {
                ContactDetails(person: person)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact list")
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.createContacts())
    }
}
