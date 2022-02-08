//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Shanahan, Krystian (JD) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var subject : String = ""
    @State private var classworkFeeling : String =  ""
    @State private var EWFeeling : String = ""
    var body: some View {
        VStack {
            Form{
                TextField("What subject?", text: $subject)

            }
            Form {
                Text("How are you Feeling (Classwork)?")
                HStack {
                    Button("😃") {
                        classworkFeeling = "Good"
                    }
                    Spacer()
                    Button("🙂") {
                        classworkFeeling = "OK"
                    }
                    Spacer()
                    Button("🙁") {
                        classworkFeeling = "not so good"
                    }
                
                }
            }
            Spacer()
            Form {
                Text("How are you Feeling (EW)?")
                HStack {
                    Button("😃") {
                        EWFeeling = "Good"
                    }
                    Spacer()
                    Button("🙂") {
                        EWFeeling = "OK"
                    }
                    Spacer()
                    Button("🙁") {
                        EWFeeling = "Bad"
                    }
                
                }
                
                
                
            }
            Spacer()
            Form {
            Text("I am finding \(subject) \(classworkFeeling) in class and I am finding the EW \(EWFeeling).")
            }
            Spacer()

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
