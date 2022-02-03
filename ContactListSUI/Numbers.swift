//
//  Numbers.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(person.fullName) {
                ContactInfo(person: person, info: .phone)
                ContactInfo(person: person, info: .email)
            }
        }
        .navigationTitle("Contact list")
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.createContacts())
    }
}
