//
//  Semester.swift
//  uowm-schedule
//
//  Created by Petros on 18/12/22.
//

import Foundation
import SwiftUI

struct Semester: Identifiable{
    let id = UUID()
    var name: Int
    var courses: [Course]
}
