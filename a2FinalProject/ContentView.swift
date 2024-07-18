//
//  ContentView.swift
//  a2FinalProject
//
//  Created by Nicole Phan on 12/07/2024.
//

//
//  ContentView.swift
//  finalProjectExperimentDouble
//
//  Created by Rakshana then I, Nicole Phan, made a copy on 17/07/24
//

import SwiftUI
struct ContentView: View {
  var body: some View {
      TabView {
        NavigationView {
          HomeView()
        }
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }
        NavigationView {
          calc()
        }
        .tabItem {
          Image(systemName: "plus.slash.minus")
          Text("Calculator")
        }
        NavigationView {
          ProfileView()
        }
        .tabItem {
          Image(systemName: "person")
          Text("Your Profile")
        }
          NavigationView {
                         AboutView()
                      }
                      .tabItem {
                          Image(systemName: "network")
                          Text("Meet the Team")
                      }
      }
    }
  }
  struct HomeView: View {
    var body: some View {
      ZStack {
              Color(hex: "#EADDCA")
          .edgesIgnoringSafeArea(.all)
        VStack {
          Spacer()
            .frame(height: UIScreen.main.bounds.height / 14)
          Text("Welcome to AllerGenie")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 21)
            .foregroundColor(Color(hex: "#5C4033"))
            
            Image("AllerGenie")
                .resizable()
                .aspectRatio(contentMode: .fit)
               // .padding()
            
            
          Text("Food allergies are a serious problem. Allergic reactions can occasionally be fatal, but can more often be preventable!")
            .font(.body)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 20)
            .foregroundColor(Color(hex: "#5C4033"))
            .padding()
            
            // will change now to go to profile page 18/7/24
            
            Text("To proceed, press the button below to go to your profile to add your allergen information in. Then, go to the calculator to type in foods to check if you are at risk.")
                .font(.body)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(Color(hex: "#5C4033"))
            
            
            
          NavigationLink(destination: ProfileView()) {
            Text("Enter")
              .font(.headline)
              .padding()
              .frame(maxWidth: 215)
              .background(Color(hex: "#C4A484"))
              .foregroundColor(.white)
              .cornerRadius(10)
              .padding(.horizontal, 40)
          }
          .padding(.top, 20)
          Spacer()
        }
      }
      .navigationBarHidden(true)
    }
  }
 
 
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
  extension Color {
    init(hex: String) {
      let scanner = Scanner(string: hex)
      _ = scanner.scanString("#")
      var rgb: UInt64 = 0
      scanner.scanHexInt64(&rgb)
      let r = Double((rgb >> 16) & 0xFF) / 255.0
      let g = Double((rgb >> 8) & 0xFF) / 255.0
      let b = Double(rgb & 0xFF) / 255.0
      self.init(red: r, green: g, blue: b)
    }
  }
  #Preview {
    ContentView()
  }

