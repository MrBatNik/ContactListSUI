//
//  Person.swift
//  ContactListSUI
//
//  Created by Nikita Batrakov on 03.02.2022.
//

import Foundation

struct Person: Identifiable {
    let id: String
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func createContacts() -> [Person] {
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        var persons: [Person] = []
        
        for index in 0..<iterationCount {
            let person = Person(
                id: String(index),
                firstName: names[index],
                lastName: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        
        return persons
    }
}
