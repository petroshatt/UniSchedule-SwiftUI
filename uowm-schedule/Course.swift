//
//  course.swift
//  uowm-schedule
//
//  Created by Petros on 18/12/22.
//

import Foundation
import SwiftUI


struct Course: Identifiable{
    let id = UUID()
    var name: String
    var professor: String // to-do: add professor struct
    var courseTaken: Bool
    
    init(name: String, professor: String) {
        
        self.name = name
        self.professor = professor
        self.courseTaken = false
        
    }
    
}


