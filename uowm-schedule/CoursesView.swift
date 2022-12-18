//
//  coursesView.swift
//  uowm-schedule
//
//  Created by Petros on 18/12/22.
//

import Foundation
import SwiftUI


struct CourseRowView: View {
    
    var course: Course
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 3) {
            HStack(spacing: 7) {
                Text(course.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                if course.courseTaken {
                    Image(systemName: "checkmark")
                    .font(.headline)
                    .foregroundColor(.green)
                }
            }
            HStack(spacing: 3) {
                Label(course.professor, systemImage: "person")
            }
            .foregroundColor(.secondary)
            .font(.subheadline)
            
        }
    }
}


struct CourseDetailView: View {
    
    var course: Course
    
    var body: some View {
        VStack {
            Text(course.name)
                .foregroundColor(.primary)
                .font(.title)
                .padding()
            HStack {
                Label(course.professor, systemImage: "phone")
            }
            .foregroundColor(.secondary)
        }
    }
}


struct AddCourseView: View {
    
    @State var doneAddingCourses: Bool = false
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(curriculum.semesters) { semester in
                    Section(header: Text("Semester " + String(semester.name))) {
                        ForEach(semester.courses) { course in
                            NavigationLink(destination: CourseDetailView(course: course)) {
                                CourseRowView(course: course)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Add Courses")
            .sheet(isPresented: $doneAddingCourses) {
                 CoursesView()
             }
            // TO-DO: ADD DONE BUTTON
            
//            .navigationBarItems(trailing:
//                Button (action: {
//                    doneAddingCourses.toggle()
//                }) {
//                    Text("Done")
//                }
//            )
            
            // Placeholder
            Text("No Selection")
            .font(.headline)
        }
        
    }
}


struct CoursesView: View {
    
    @State var showAddCourseView: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(curriculum.semesters) { semester in
                    Section(header: Text("Semester " + String(semester.name))) {
                        ForEach(semester.courses) { course in
                            NavigationLink(destination: CourseDetailView(course: course)) {
                                CourseRowView(course: course)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Courses")
            .sheet(isPresented: $showAddCourseView) {
                     AddCourseView()
                 }
            .navigationBarItems(trailing:
                Button (action: {
                    showAddCourseView.toggle()
                }) {
                    Image(systemName: "plus")
                }
            )
            
            // Placeholder
            Text("No Selection")
            .font(.headline)
        }
        
    }
}
