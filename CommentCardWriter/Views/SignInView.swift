//
//  SignInView.swift
//  CommentCardWriter
//
//  Created by Shanahan, Krystian (JD) on 23/02/2022.
//

import SwiftUI


let lightGray = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)


struct SignInView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        VStack {
            signInText()
            TextField ("Username",text: $username)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .background(lightGray)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .background(lightGray)
            if password != "" && username != "" {
                NavigationLink("Enter", destination: ContentView())
            }
        }
    }
}

struct signInText: View {
    var body: some View {
        Text("Sign In")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
