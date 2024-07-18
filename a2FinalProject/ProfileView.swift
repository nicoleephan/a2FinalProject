//
//  ProfileView.swift
//  a2FinalProject
//
//  Created by Nicole Phan on 18/07/2024.
//

import SwiftUI
struct ProfileView: View {
  @State private var name: String = ""
  @State private var savedName: String = ""
  @State private var showTextField = false
  @State private var inputText = ""
  @State private var allergies: [String] = []
  var body: some View {
    ZStack {
        Color(hex: "#EADDCA")
                .edgesIgnoringSafeArea(.all)
      VStack {
          Spacer()
            .frame(height: UIScreen.main.bounds.height / 44) // tried to change # here to see if it would push everything up further but doesn't
        Text("Profile Page")
          .font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)
        
          
        TextField("Enter your name", text: $name)
              .padding()
              .textFieldStyle(RoundedBorderTextFieldStyle())
              .frame(maxWidth: 351)
          
        Button(action: {
          savedName = name
        }) {
          Text("Save Name")
                .padding()
                .frame(maxWidth: 215)
                .background(Color(hex: "#C4A484"))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal, 40)
  
        }
        .padding(.top, 20)
        if !savedName.isEmpty {
          Text("Hi, \(savedName)!")
            .padding()
            .background(Color(hex: "#EADDCA"))
            .cornerRadius(5.0)
            .padding(.horizontal, 40)
            .padding(.top, 20)
            .font(.title2)
            .bold()
        }
        VStack {
          Button(action: {
            withAnimation {
              showTextField.toggle()
            }
          }) {
            Text("Add Allergy/ Dietary Restriction")
          }
          if showTextField {
            TextField("Type food", text: $inputText)
              .padding()
              .textFieldStyle(RoundedBorderTextFieldStyle())
              .transition(.slide)
              .textInputAutocapitalization(.never)
            if inputText != "" {
              Button(action: {
                allergies.append(inputText)
                inputText = ""
                ing = allergies.joined(separator: ",")
                withAnimation {
                  showTextField.toggle()
                }
              }) {
                Text("Calculate")
              }
            }
          }
          Text("Restrictions noted:")
            .padding(5)
          if allergies.isEmpty {
            Text("None at the moment...")
          } else {
            ForEach(allergies, id: \.self) { allergy in
              Text(allergy)
            }
              
              NavigationLink(destination: calc()) {
                Text("Calculate")
                  .font(.headline)
                  .padding()
                  .frame(maxWidth: 215)
                  .background(Color(hex: "#C4A484"))
                  .foregroundColor(.white)
                  .cornerRadius(10)
                  .padding(.horizontal, 40)
              }
              
          }
        }
        .padding()
      }
      .padding(.top, 40)
    }
    }
  }

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}

