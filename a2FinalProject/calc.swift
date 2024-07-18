//
//  calc.swift
//  a2FinalProject
//
//  Created by Nicole Phan on 18/07/2024.
//

//import SwiftUI
//
//struct CalculatorResponse: Codable {
//    let ingredients: [Calculator] // changed from 'course' to 'Calculator'
//}
//
//struct Calculator: Codable, Hashable {
//    let name: String?
//}
//
//struct CalculatorResponseTwo: Codable {
//    let results: [ResultItem]
//}
//
//struct ResultItem: Codable {
//    let id: Int
//    let title: String
//    let image: String
//    let imageType: String
//}
//
//var ing = "butter"
//var actid = ""
//
//
//class CombinedViewModel: ObservableObject {
//    @Published var courses: [Calculator] = []
//    @Published var firstId: Int? = nil
//
//    func fetchRecipeById(recipeId: String) {
//        print("Fetching data for recipe ID: \(recipeId)")
//
//        guard let url = URL(string: "https://api.spoonacular.com/recipes/\(recipeId)/ingredientWidget.json?apiKey=0282864d78c642fd8e1424ab060f3321") else {
//            print("Invalid URL")
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
//            if let error = error {
//                print("Error fetching data: \(error.localizedDescription)")
//                return
//            }
//
//            guard let data = data else {
//                print("No data received")
//                return
//            }
//
//            do {
//                let CalculatorResponse = try JSONDecoder().decode(CalculatorResponse.self, from: data)
//                DispatchQueue.main.async {
//                    self?.courses = CalculatorResponse.ingredients
//                    print("am decoding")
//                }
//            } catch {
//                print("Error decoding JSON: \(error)")
//            }
//        }
//        task.resume()
//    }
//
//    func fetchFirstRecipe(name:String) {
//        print("Fetching first recipe ID")
//
//        guard let url = URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=0282864d78c642fd8e1424ab060f3321&query=\(name)") else {
//            print("Invalid URL")
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
//            if let error = error {
//                print("Error fetching data: \(error.localizedDescription)")
//                return
//            }
//
//            guard let data = data else {
//                print("No data received")
//                return
//            }
//
//            do {
//                let CalculatorResponseTwo = try JSONDecoder().decode(CalculatorResponseTwo.self, from: data)
//                if let firstResult = CalculatorResponseTwo.results.first {
//                    DispatchQueue.main.async {
//                        self?.firstId = firstResult.id
//                        print("First ID: \(firstResult.id)")
//
//                        // Trigger fetching the Calculator details
//                        self?.fetchRecipeById(recipeId: "\(firstResult.id)")
//                    }
//                } else {
//                    print("No results found")
//                }
//            } catch {
//                print("Error decoding JSON: \(error)")
//            }
//        }
//        task.resume()
//    }
//}
//
//struct calc: View {
//    @StateObject var viewModel = CombinedViewModel()
//    @State private var name = ""
//
//    var body: some View {
//        NavigationView {
//            // ZStack added 18/7/24 from Nicole's project
//            ZStack {
//                Color(hex: "#EADDCA")
//                    .edgesIgnoringSafeArea(.all)
//                //
//                VStack {
//                    TextField("Enter recipe name", text: $name)
//                        .padding()
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .frame(maxWidth: 351)
//
//
//
//                    Button("Search") {
//                        viewModel.fetchFirstRecipe(name: name)
//                    }
//                    //button adjustments done 18/7/24 - Nicole
//                    .font(.headline)
//                    .padding()
//                    .frame(maxWidth: 215)
//                    .background(Color(hex: "#C4A484"))
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .padding(.horizontal, 40)
//
//                    List(viewModel.courses, id: \.self) { Calculator in
//                        VStack(alignment: .leading) {
//                            Text(Calculator.name ?? "Unknown Name")
//                                .font(.headline)
//
//                            if Calculator.name == ing {
//                                Text("ALERT")
//                                    .foregroundColor(.red)
//                            }
//                        }
//                        .padding(5)
//                    }
//                }
//                .navigationTitle("Calculator")
//            }
//        }
//    }
//
//    struct calc_Previews: PreviewProvider {
//        static var previews: some View {
//            calc()
//        }
//    }
//}


import SwiftUI
struct CourseResponse: Codable {
  let ingredients: [Course]
}
struct Course: Codable, Hashable {
  let name: String?
}
struct CourseResponseTwo: Codable {
  let results: [ResultItem]
}
struct ResultItem: Codable {
  let id: Int
  let title: String
  let image: String
  let imageType: String
}
var ing = ""
var actid = ""
class CombinedViewModel: ObservableObject {
  @Published var courses: [Course] = []
  @Published var firstId: Int? = nil
  func fetchRecipeById(recipeId: String) {
    print("Fetching data for recipe ID: \(recipeId)")
    guard let url = URL(string: "https://api.spoonacular.com/recipes/\(recipeId)/ingredientWidget.json?apiKey=0282864d78c642fd8e1424ab060f3321") else {
      print("Invalid URL")
      return
    }
    let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
      if let error = error {
        print("Error fetching data: \(error.localizedDescription)")
        return
      }
      guard let data = data else {
        print("No data received")
        return
      }
      do {
        let courseResponse = try JSONDecoder().decode(CourseResponse.self, from: data)
        DispatchQueue.main.async {
          self?.courses = courseResponse.ingredients
          print("am decoding")
        }
      } catch {
        print("Error decoding JSON: \(error)")
      }
    }
    task.resume()
  }
  func fetchFirstRecipe(name:String) {
    print("Fetching first recipe ID")
    guard let url = URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=0282864d78c642fd8e1424ab060f3321&query=\(name)") else {
      print("Invalid URL")
      return
    }
    let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
      if let error = error {
        print("Error fetching data: \(error.localizedDescription)")
        return
      }
      guard let data = data else {
        print("No data received")
        return
      }
      do {
        let courseResponseTwo = try JSONDecoder().decode(CourseResponseTwo.self, from: data)
        if let firstResult = courseResponseTwo.results.first {
          DispatchQueue.main.async {
            self?.firstId = firstResult.id
            print("First ID: \(firstResult.id)")
            // Trigger fetching the course details
            self?.fetchRecipeById(recipeId: "\(firstResult.id)")
          }
        } else {
          print("No results found")
        }
      } catch {
        print("Error decoding JSON: \(error)")
      }
    }
    task.resume()
  }
}
struct calc: View {
    @StateObject var viewModel = CombinedViewModel()
    @State private var name = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "#EADDCA")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    TextField("Enter recipe name", text: $name)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 351)
                    
                    
                    Button("Search") {
                        viewModel.fetchFirstRecipe(name: name)
                    }
                    .padding()
                    .frame(maxWidth: 215)
                    .background(Color(hex: "#C4A484"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    
                    
                    
                    List(viewModel.courses, id: \.self) { course in
                        VStack(alignment: .leading) {
                            Text(course.name ?? "Unknown Name")
                                .font(.headline)
                            if ing.contains(course.name ?? "") {
                                Text("ALERT")
                                    .foregroundColor(.red)
                                    .bold()
                            }
                        }
                        .padding(5)
                    }
                }
                .navigationTitle("Calculator")
            }
        }
    }
    struct calc_Previews: PreviewProvider {
        static var previews: some View {
            calc()
        }
    }
}
