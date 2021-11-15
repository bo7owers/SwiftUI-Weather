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
            BgView(topColor: Color("BG_Blue"), bottomColor: Color("BG_White"))
            VStack{
                MainTextView(mainText: "Ottawa, ON")
                VStack(spacing: 5) {
                    ImageView(icon: "sun.and.horizon.fill")
                    
                    Text("6°")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .foregroundColor(.black)
                        .frame(width: 80, height: 70, alignment: .trailing)
                }
                .padding(.bottom, -20)
                HStack (alignment: .bottom, spacing: 20){
                    WeatherDayView(dayOfWeek: "MON", imageDay: "cloud.sun.fill", temperature: 3)
                    WeatherDayView(dayOfWeek: "TUE", imageDay: "cloud.snow.fill", temperature: 4)
                    WeatherDayView(dayOfWeek: "WED", imageDay: "cloud.sun.fill", temperature: 2)
                    WeatherDayView(dayOfWeek: "THU", imageDay: "cloud.sun.fill", temperature: 0)
                   WeatherDayView(dayOfWeek: "FRI", imageDay: "wind.snow", temperature: -6)
                }
                Button{
//                    Action
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .cornerRadius(11)
                }
                
                Spacer()
               
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

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageDay: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .light, design: .rounded))
            Image(systemName: imageDay)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .top)
//            Interpolation
            Text("\(temperature)°")
                .font(.system(size: 22, weight: .light, design: .rounded))
//            Spacer()
        }.frame(height: 220)
    }
}

struct BgView: View {
    var topColor: Color
    var bottomColor: Color
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MainTextView: View {
    let  mainText: String
    
    var body: some View {
        Text(mainText)
            .font(.system(size: 35, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding(.top, 35)
    }
}

struct ImageView: View {
    var icon: String
    var body: some View {
        Image(systemName: icon)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180, alignment: .center)
    }
}
