//
//  AboutView.swift
//  a2FinalProject
//
//  Created by Nicole Phan on 18/07/2024.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
    ZStack {
            Color(hex: "#EADDCA")
        .edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()
          .frame(height: UIScreen.main.bounds.height / 14)
        Text("Meet the Team!")
          .font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)
          .padding(.bottom, 21)
          .foregroundColor(Color(hex: "#5C4033"))
    
        }
        .padding(.top, 20)
        Spacer()
      }
    }
}
#Preview {
    AboutView()
}
