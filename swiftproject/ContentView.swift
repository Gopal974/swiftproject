//
//  ContentView.swift
//  swiftproject
//
//  Created by student on 11/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var goToSignup:Bool = false
    @State private var goToLogin: Bool = false
    var body: some View {
        NavigationStack{
            ScrollView{
                
                
                
                VStack(spacing:15) {
                    Image(.whatsapp2504957)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(30)
                        
                    
                    Text("Welcome!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.black)
                    Spacer()
                    TextField("Email or phone number", text: $email)
                        .padding(.all, 16.0)
                        .frame(width: 300, height: 50)
                        .background(Color(hue: 1.0, saturation: 0.102, brightness: 0.687))
                        .cornerRadius(25)
                    
                    TextField("password", text: $password)
                        .padding(.all, 16.0)
                        .frame(width: 300, height: 50)
                        .background(Color(hue: 1.0, saturation: 0.096, brightness: 0.627))
                        .cornerRadius(25)
                    HStack{
                        Spacer()
                        
                        Button{
                            
                        }label:{
                            Text("Forgot password?")
                                .padding(.trailing,90)
                        }
                    }
                    Button{
                        goToLogin = true
                        
                    }label:{
                        Text("Login")
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 50)
                            .background(Color(hue: 0.645, saturation: 0.834, brightness: 0.327))
                            .cornerRadius(25)
                    }
                    Spacer()
                    HStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 100, height: 1)
                        
                        
                        Text("Or")
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 100, height: 1)
                    }
                    HStack{
                        Button{
                            
                        }label:{
                            Image(._3721672InstagramIcon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                        }
                        Button{
                            
                        }label:{
                            Image(._4696483CircleFacebookMediaNetworkSocialIcon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                        }
                        Button{
                            
                        }label:{
                            Image(._771365CircleLogoMediaNetworkSocialIcon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                        }
                    }
                    Spacer()
                    Spacer()
                    
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 500, height: 1)
                    Spacer()
                    
                    HStack{
                        Text("Don't have account?")
                            .fontWeight(.semibold)
                        
                        Button{
                            goToSignup = true
                        }label:{
                            Text("Signup")
                                .fontDesign(.rounded)
                                .padding(.vertical,15.0)
                        }
                    }
                 
                    .padding()
                    .navigationDestination( isPresented: $goToSignup ){
                        SignupPage()
                    }
                    .navigationDestination(isPresented: $goToLogin){
                        Login()
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
