//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Akbar, Abdullah (RCH) on 24/01/2023.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    #if DEBUG
    static let examples = [Student(forename: "Roberto", surname: "Baggio", birthday: Date())]
    #endif
}
   
