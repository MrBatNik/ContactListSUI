//
//  ContactInfo.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import SwiftUI

enum Info {
    case phone, email
}

struct ContactInfo: View {
    let person: Person
    let info: Info
    
    var body: some View {
        HStack {
            Image(systemName: info == .phone ? "phone" : "tray")
                .foregroundColor(.blue)
            Text("\(info == .phone ? person.phone : person.email)")
        }
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(
            person:
                Person(
                    id: "1",
                    firstName: "First name",
                    lastName: "Last name",
                    phone: "Phone number",
                    email: "Email adress"
                ),
            info: .phone
        )
    }
}
