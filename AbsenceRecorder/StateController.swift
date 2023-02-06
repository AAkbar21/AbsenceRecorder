//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Akbar, Abdullah (RCH) on 06/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
