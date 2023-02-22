//
//  File.swift
//  AbsenceRecorder
//
//  Created by Akbar, Abdullah (RCH) on 21/02/2023.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Roberto", surname: "baggio", birthday: Date()))
    #endif
}