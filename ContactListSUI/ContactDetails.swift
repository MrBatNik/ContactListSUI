//
//  ContactDetails.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            List {
                ContactInfo(person: person, info: .phone)
                ContactInfo(person: person, info: .email)
            }
            .listStyle(.plain)
            .navigationTitle(person.fullName)
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person(
            id: "1",
            firstName: "First Name",
            lastName: "Last Name",
            phone: "Phone Number",
            email: "Email adress"
        ))
    }
}
