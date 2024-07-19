
import SwiftUI



struct AboutView: View {
    
    var body: some View {
        
        ZStack {
            
            Color(hex: "#EADDCA")
            
                .edgesIgnoringSafeArea(.all)
            
            
            
            ScrollView {
                
                VStack {
                    
                    Spacer()
                    
                        .frame(height: UIScreen.main.bounds.height / 144)
                    
                    
                    
                    Text("Meet the Team!")
                    
                        .font(.largeTitle)
                    
                        .fontWeight(.bold)
                    
                        .multilineTextAlignment(.center)
                    
                        .padding()
                    
                        .foregroundColor(Color(hex: "#5C4033"))
                    
                    
                    
                    Image("team")
                    
                        .resizable()
                    
                        .aspectRatio(contentMode: .fit)
                    
                        .padding()
                    
                    
                    
                    //                    VStack(spacing: 20) {
                    
                    VStack {
                        
                        HStack {
                            
                            Image("purba")
                            
                                .resizable()
                            
                                .frame(width: 50, height: 50)
                            
                                .clipShape(Circle())
                            
                                .padding(.bottom, 15)
                            
                            
                            
                            Text("Purba")
                            
                                .font(.headline)
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                            
                            
                            
                            
                            Spacer()
                            
                            
                            
                            Text("Top left")
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                                .font(.caption)
                            
                        }
                        
                        .padding(.horizontal)
                        
                        
                        
                        Text("Hi, I’m Purba! I’m from New Jersey and am a rising senior. In my free time, I like hanging out with my friends and binging TV shows. I decided to participate in KWK to learn more about Xcode and Swift to potentially make my own app and wanted to be apart of a supportive community.")
                        
                            .padding(.horizontal)
                        
                            .padding(.bottom, 15)
                        
                            .foregroundColor(Color(hex: "#5C4033"))
                        
                            .font(.caption)
                        
                    }
                    
                    .padding()
                    
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "#5C4033"), lineWidth: 2))
                    
                    .padding(.horizontal)
                    
                    
                    
                    VStack {
                        
                        HStack {
                            
                            Image("nicole")
                            
                                .resizable()
                            
                                .frame(width: 50, height: 50)
                            
                                .clipShape(Circle())
                            
                                .padding(.bottom, 15)
                            
                            
                            
                            Text("Nicole")
                            
                                .font(.headline)
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                            
                            
                            Spacer()
                            
                            
                            
                            Text("Top right")
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                                .font(.caption)
                            
                        }
                        
                        .padding(.horizontal)
                        
                        
                        
                        Text("Hey, I’m Nicole! I’m from the UK and will be studying Economics and Data Science at university this September. I enjoy hiking, reading, and journaling in my spare time. KWK helps me to challenge myself with coding in a such a short space of time, and who doesn't love a great sisterhood?")
                        
                            .padding(.horizontal)
                        
                            .padding(.bottom, 15)
                        
                            .foregroundColor(Color(hex: "#5C4033"))
                        
                            .font(.caption)
                        
                    }
                    
                    .padding()
                    
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "#5C4033"), lineWidth: 2))
                    
                    .padding(.horizontal)
                    
                    
                    
                    VStack {
                        
                        HStack {
                            
                            Image("bianca")
                            
                                .resizable()
                            
                                .frame(width: 50, height: 50)
                            
                                .clipShape(Circle())
                            
                                .padding(.bottom, 15)
                            
                            
                            
                            
                            
                            Text("Bianca")
                            
                                .font(.headline)
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                            
                            
                            Spacer()
                            
                            
                            
                            Text("Bottom left")
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                                .font(.caption)
                            
                        }
                        
                        .padding(.horizontal)
                        
                        
                        
                        Text("Hi, I’m Bianca! I’m from Florida and I’m a rising senior. I love fashion, reading and Lana del Rey. This is my 3rd year at KWK! Not only do I love learning programming but I absolutely adore the community :)")
                        
                            .padding(.horizontal)
                        
                            .padding(.bottom, 15)
                        
                            .foregroundColor(Color(hex: "#5C4033"))
                        
                            .font(.caption)
                        
                    }
                    
                    .padding()
                    
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "#5C4033"), lineWidth: 2))
                    
                    .padding(.horizontal)
                    
                    
                    
                    VStack {
                        
                        HStack {
                            
                            Image("nicole")
                            
                                .resizable()
                            
                                .frame(width: 50, height: 50)
                            
                                .clipShape(Circle())
                            
                                .padding(.bottom, 15)
                            
                            
                            
                            Text("Rakshana")
                            
                                .font(.headline)
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                            
                            
                            Spacer()
                            
                            
                            
                            Text("Top right")
                            
                                .foregroundColor(Color(hex: "#5C4033"))
                            
                                .font(.caption)
                            
                        }
                        
                        .padding(.horizontal)
                        
                        
                        
                        Text("Hi! I'm Rakshana! I'm a rising senior from New Jersey. I enjoy music, advocating for human rights, and my dog! I've been programming for 4 years and this is my 2nd summer at KWK. I love coding solutions to problems that I am passionate about, such as public health!")
                        
                            .padding(.horizontal)
                        
                            .padding(.bottom, 15)
                        
                            .foregroundColor(Color(hex: "#5C4033"))
                        
                            .font(.caption)
                        
                    }
                    
                    .padding()
                    
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "#5C4033"), lineWidth: 2))
                    
                    .padding(.horizontal)
                    
                    
                    
                    
                }
                
            }
        }
        
    }
    
    
    
    struct AboutView_Previews: PreviewProvider {
        
        static var previews: some View {
            
            AboutView()
            
        }
        
    }
    
}
