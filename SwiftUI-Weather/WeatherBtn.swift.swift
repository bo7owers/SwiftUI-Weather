//
//  WeatherBtn.swift.swift
//  SwiftUI-Weather
//
//  Created by René Torres on 2021-11-15.
//

import SwiftUI


struct WeatherButtonView: View {
    var weatherLabel: String
    var labelColor: Color
    var btnColor: Color
    var body: some View {
        Text(weatherLabel)
            .frame(width: 280, height: 50, alignment: .center)
            .background(labelColor)
            .foregroundColor(btnColor)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
        .cornerRadius(11)
        
    }
}

