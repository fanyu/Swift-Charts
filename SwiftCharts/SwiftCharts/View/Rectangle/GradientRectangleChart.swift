//
//  GradientRectangleChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/27.
//

import SwiftUI
import Charts

struct GradientRectangleChart: View {
    
    private let linearGradient = LinearGradient(
        stops: [Gradient.Stop(color: .green, location: 0),
                Gradient.Stop(color: .green, location: 2/14),
                Gradient.Stop(color: .yellow, location: 5/14),
                Gradient.Stop(color: .orange, location: 8/14),
                Gradient.Stop(color: .red, location: 10/14),
                Gradient.Stop(color: .purple, location: 14/14)],
        startPoint: .bottom,
        endPoint: .top
    )
    
    var body: some View {
        Chart {
            RectangleMark(
                xStart: .value("0", 0),
                xEnd: .value("100", 100)
            )
            .foregroundStyle(linearGradient)
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct GradientRectangleChart_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangleChart()
    }
}
