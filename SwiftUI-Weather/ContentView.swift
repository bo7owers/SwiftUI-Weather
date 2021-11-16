//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by René Torres on 2021-11-14.
//

import SwiftUI

struct ContentView: View {
    let bgBlue = "BG_Blue"
    let bgWhite = "BG_White"
    let drkbgBlue = "gb-blue-dark"
    let drkbgWhite = "gb-white-dark"
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            BgView(topColor: isNight == !true ? Color(bgBlue) : Color(drkbgWhite), bottomColor: isNight == !true ? Color(bgWhite) : Color(drkbgBlue))
            VStack{
                MainTextView(mainText: "Gatineau, QC", foregroundColor: isNight == !true ? .white : .yellow)
                CityView(iconName: isNight == !true ? "sun.and.horizon.fill" : "moon.stars.fill", degrees: 6, textColor: isNight == !true ? .black : .white)
                HStack (alignment: .bottom, spacing: 20){
                    WeatherDayView(dayOfWeek: "MON", imageDay: "cloud.sun.fill", temperature: 3, textColorDay: isNight == !true ? .black : .white, weekdayColor: isNight == !true ? .black : .white)
                    WeatherDayView(dayOfWeek: "TUE", imageDay: "cloud.snow.fill", temperature: 4, textColorDay: isNight == !true ? .black : .white, weekdayColor: isNight == !true ? .black : .white)
                    WeatherDayView(dayOfWeek: "WED", imageDay: "cloud.sun.fill", temperature: 2, textColorDay: isNight == !true ? .black : .white, weekdayColor: isNight == !true ? .black : .white)
                    WeatherDayView(dayOfWeek: "THU", imageDay: "cloud.sun.fill", temperature: 0, textColorDay: isNight == !true ? .black : .white, weekdayColor: isNight == !true ? .black : .white)
                   WeatherDayView(dayOfWeek: "FRI", imageDay: "wind.snow", temperature: -6, textColorDay: isNight == !true ? .black : .white, weekdayColor: isNight == !true ? .black : .white)
                }
                Button{
//                    Action
                    isNight.toggle()
                    
                    isNight == true ? print("is Night") : print("is Day")
                } label: {
                    WeatherButtonView(weatherLabel: "Tap here", labelColor: .white, btnColor: .indigo)
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
    var textColorDay: Color
    var weekdayColor: Color
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .light, design: .rounded))
                .foregroundColor(weekdayColor)
            Image(systemName: imageDay)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .top)
//            Interpolation
            Text("\(temperature)°")
                .font(.system(size: 22, weight: .light, design: .rounded))
                .foregroundColor(textColorDay)
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
    let foregroundColor: Color
    
    var body: some View {
        Text(mainText)
            .font(.system(size: 35, weight: .medium, design: .rounded))
            .foregroundColor(foregroundColor)
            .padding(.top, 35)
    }
}



struct CityView: View {
    var iconName: String
    var degrees: Int
    var textColor : Color
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: .center)
            
            Text("\(degrees)°")
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .foregroundColor(textColor)
                .frame(width: 80, height: 70, alignment: .trailing)
        }
        .padding(.bottom, -20)
    }
}

