//
//  Curriculum.swift
//  uowm-schedule
//
//  Created by Petros on 18/12/22.
//

import Foundation
import SwiftUI

struct Curriculum {
    var semesters: [Semester]
}

var curriculum = Curriculum(semesters: [

    Semester(name: 4, courses: [
        Course(name: "Signal Processing", professor: "Markos Tsipouras"),
        Course(name: "Applied Mathematics II", professor: "Theodoros Zygiridis"),
        Course(name: "Telecommunications", professor: "Malamati Louta")
    ]),
    Semester(name: 6, courses: [
        Course(name: "Database Systems", professor: "Konstantinos Stergiou"),
        Course(name: "Computer Networks", professor: "Theodoros Fragoulis"),
        Course(name: "Microprocessors", professor: "Nikolaos Asimopoulos")
    ]),
    Semester(name: 8, courses: [
        Course(name: "Software Engineering", professor: "Stamatia Bibi"),
        Course(name: "Algorithm Analysis", professor: "Nikolaos Ploskas"),
        Course(name: "Constraints Programming", professor: "Konstantinos Stergiou")
    ])

])
