//
//  SignupPage.swift
//  swiftproject
//
//  Created by student on 11/07/25.
//
import SwiftUI

struct SignupPage: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""
    @State private var isSignedUp = false

    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                
                Image(._2754579BusinessManManAvatarIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(30)
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                
                TextField("Name", text: $name)
                    
                    .autocapitalization(.words)
                    .padding(.all, 16.0)
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 1.0, saturation: 0.102, brightness: 0.687))
                    .cornerRadius(25)
                
                TextField("Email", text: $email)
                   
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding(.all, 16.0)
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 1.0, saturation: 0.102, brightness: 0.687))
                    .cornerRadius(25)
                
                SecureField("Password", text: $password)
                    
                    .padding(.all, 16.0)
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 1.0, saturation: 0.102, brightness: 0.687))
                    .cornerRadius(25)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .padding(.all, 16.0)
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 1.0, saturation: 0.102, brightness: 0.687))
                    .cornerRadius(25)
                
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .font(.footnote)
                }
                
                Spacer()
                
                Button(action: signup) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 300, height: 50)
                        .background(Color(hue: 0.645, saturation: 0.834, brightness: 0.327))
                        .cornerRadius(25)
                }
                .disabled(!formIsValid)
                
                Spacer()
            }
            .padding()
            .alert(isPresented: $isSignedUp) {
                Alert(title: Text("Success"), message: Text("You have signed up successfully!"), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    var formIsValid: Bool {
        !name.isEmpty &&
        email.contains("@") &&
        password.count >= 6 &&
        password == confirmPassword
    }
    
    func signup() {
        guard formIsValid else {
            errorMessage = "Please check your inputs. Password must be at least 6 characters and both passwords should match."
            return
        }
        errorMessage = ""
        
        isSignedUp = true
        clearFields()
    }
    
    func clearFields() {
        name = ""
        email = ""
        password = ""
        confirmPassword = ""
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}

