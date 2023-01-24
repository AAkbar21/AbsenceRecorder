//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Akbar, Abdullah (RCH) on 22/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @ State private var currentdDate: Date = Date()
    
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code) { division in DivisionItem(division: division)
                }
            }
            .navigationTitle(currentdDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {currentdDate = currentdDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentdDate = currentdDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
