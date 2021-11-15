//
//  ContentView.swift
//  LampShop
//
//  Created by Ettore Falde on 19/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var color = 0
    @State var height = UIScreen.main.bounds.height
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack {
            
            ZStack(alignment: .top) {
                
                Rectangle()
                    .frame(height: 350)
                    .foregroundColor(self.color == 0 ? .yellow : .gray)
                    .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
                
                VStack(spacing: 20) {
                    
                    Image(self.color == 0 ? "lamp_yellow" : "lamp_gray")
                        .resizable()
                        .frame(width: 140, height: 250)
                        .shadow(color: .black.opacity(0.6), radius: 10, x: 10, y: 5)

                    HStack(spacing: 20) {
                        
                        // yellow button
                        Button(action: {
                            self.color = 0
                        }) {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.yellow)
                                        .frame(width: 20, height: 20)
                                        
                                    Circle()
                                        .stroke(self.color == 0 ? Color.white : Color.clear)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Yellow")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        
                        // orange button
                        Button(action: {
                            self.color = 1
                        }) {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 20, height: 20)
                                        
                                    Circle()
                                        .stroke(self.color == 1 ? Color.white : Color.clear)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Gray")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                }
                
                HStack {
                    // go back arrow button
                    Button(action: {
                        
                    }) {
                        Image(systemName:"arrowshape.turn.up.backward.fill")
                            .renderingMode(.original)
                            .font(.title2)
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    
                    // cart button
                    Button(action: {
                        
                    }) {
                        Image(systemName:"cart")
                            .renderingMode(.original)
                            .padding()
                            .font(.title2)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .background(Color.white)
                    .clipShape(CustomShape(corner: .bottomLeft, radii: 35))
                }
                
            }
            
            ScrollView(self.height > 800 ? .init() : .vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Yellow Lamp")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                        
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "suit.heart.fill")
                                .foregroundColor(.white)
                                .padding()
                        }
                        .background(self.color == 0 ? Color.yellow : Color.gray)
                        .clipShape(Circle())
                    }
                    .padding(.horizontal, 35)
                    .padding(.top)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    
                    // Buttons of lamp description
                    HStack(spacing: 15) {
                        
                        // Watt button
                        Button(action: {
                            
                        }) {
                            VStack {
                                Image(systemName: "light.max")
                                    .padding(.bottom, 1)
                                    .foregroundColor(.black)

                                
                                Text("22 W")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .frame(width: 90, height: 70)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        // Height
                        Button(action: {
                            
                        }) {
                            VStack {
                                Image(systemName: "ruler")
                                    .foregroundColor(.black)
                                    .rotationEffect(.degrees(-90))
                                    .padding(.bottom, 3)

                                
                                Text("12 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                            
                        }
                        .frame(width: 90, height: 70)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        
                    }
                    .padding(.top, 40)
                    
                    HStack(spacing: 15) {
                        // Weigth
                        Button(action: {
                            
                        }) {
                            VStack {
                                Image(systemName: "ruler")
                                    .padding(.bottom, 1)
                                    .foregroundColor(.black)

                                
                                Text("50 CM")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)

                            }
                            .padding()
                        }
                        .frame(width: 90, height: 70)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        // lenght
                        Button(action: {
                            
                        }) {
                            VStack {
                                Image(systemName: "scribble")
                                    .padding(.bottom, 1)
                                    .foregroundColor(.black)

                                
                                Text("1.6 M")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)

                            }
                            .padding()
                        }
                        .frame(width: 90, height: 70)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                    }

                    Spacer(minLength: 0)
                }
            }
            
            
            
            HStack {
                Text("$12.99")
                    .foregroundColor(.black)
                    . font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 35)
                    .padding(.bottom, 20)
                
                Spacer()
                
                Button(action: {}){
                    Text("Add to Cart")
                        . foregroundColor(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 35)
                }
                .background(self.color == 0 ? Color.yellow : Color.gray)
                .clipShape(CustomShape(corner: .topLeft, radii: 55))
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default)
    }
}

struct CustomShape: Shape {
    
    var corner: UIRectCorner
    var radii: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii:  CGSize(width: radii, height: radii))
        return Path(path.cgPath)
    }
    
}

class Host: UIHostingController<ContentView> {
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
}

