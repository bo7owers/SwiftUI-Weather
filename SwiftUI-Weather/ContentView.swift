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
                    WeatherDayView(dayOfWeek: "MON", imageDay: "cloud.sun.fill", temperature: 3)
                    WeatherDayView(dayOfWeek: "TUE", imageDay: "cloud.snow.fill", temperature: 4)
                    WeatherDayView(dayOfWeek: "WED", imageDay: "cloud.sun.fill", temperature: 2)
                    WeatherDayView(dayOfWeek: "THU", imageDay: "cloud.sun.fill", temperature: 0)
                   WeatherDayView(dayOfWeek: "FRI", imageDay: "wind.snow", temperature: -6)
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
            Spacer()
        }
    }
}
