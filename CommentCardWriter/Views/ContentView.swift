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
    internal var commentReady : Bool {
        if subject != "" && classworkFeeling != "" && EWFeeling != ""
        {
            return true
        } else {
            return false
        }
    }
    internal var connective: String {
        if EWFeeling == "bad" && classworkFeeling == "good" || EWFeeling == "good" && classworkFeeling == "bad" {
            return "but"
        } else {
            return "and"
        }
    }
    
    var body: some View {
        
            
            Form{
                TextField("What subject?", text: $subject)
                Section {
                    List {
                        Text("How are you Feeling (Classwork)?")
                        
                        Button("😃 - Good",action:{classworkFeeling = "good"} )
                                
                            
                
                        Button("🙂 - OK",action:{classworkFeeling = "OK"})
                                
                        Button("🙁 - Bad",action: {classworkFeeling = "bad"})
                                
                            
                        
                    }
                }
                Section {
                    List {
                    Text("How are you Feeling (EW)?")
                    
                    Button("😃 - Good",action: {EWFeeling = "good"})

                    Button("🙂 - Ok",action: {EWFeeling = "OK"})
            
                    Button("🙁 - bad",action: {EWFeeling = "bad"})

                        }
                }
                Section{
                    if commentReady {
                        Text("I am finding \(subject) \(classworkFeeling) in class \(connective)  am finding the EW \(EWFeeling).")
    
                        
                    }
                    
                }
                Section {
                    if commentReady {
                        NavigationLink(destination: ExportView()) {
                            Text("create comment").foregroundColor(.red)
                        }
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
