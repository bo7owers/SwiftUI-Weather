//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by René Torres on 2021-11-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Ottawa, ON")
                    .font(.system(size: 35, weight: .medium, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.top, 35)
            
                VStack(spacing: 5) {
                    Image(systemName: "sun.and.horizon.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    
                    Text("6°")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .foregroundColor(.black)
                }
                Spacer()
                HStack (alignment: .bottom, spacing: 20){
                    VStack {
                        Text("MON")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Image(systemName: "cloud.drizzle.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .top)
                        Text("8°")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Spacer()
                    }
                    VStack{
                        Text("TUE")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Image(systemName: "cloud.snow.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .top)
                        Text("4°")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Spacer()
                    }
                    VStack{
                        Text("WED")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .top)
                        Text("2°")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Spacer()
                    }
                    VStack{
                        Text("THU")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .top)
                        Text("0°")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Spacer()
                    }
//                    Friday
                    VStack{
                        Text("FRI")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Image(systemName: "wind.snow")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .top)
                        Text("-6°")
                            .font(.system(size: 22, weight: .light, design: .rounded))
                        Spacer()
                    }
                }
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
