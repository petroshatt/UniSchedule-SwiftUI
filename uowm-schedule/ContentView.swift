//
//  ContentView.swift
//  uowm-schedule
//
//  Created by Petros on 18/12/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            
            CoursesView().tabItem{
                Image(systemName: "book")
                Text("Courses")
            }
            
            CalendarView().tabItem{
                Image(systemName: "calendar")
                Text("Calendar")
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
