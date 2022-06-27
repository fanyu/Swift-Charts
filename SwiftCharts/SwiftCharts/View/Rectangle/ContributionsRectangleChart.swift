//
//  ContributionsRectangleChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct ContributionsRectangleChart: View {
    
    var body: some View {
        Chart(MockData.contribution, id: \.level) {
            RectangleMark(
                xStart: .value("xStart", $0.x),
                xEnd: .value("xEnd", $0.x + 1),
                yStart: .value("yStart", $0.y),
                yEnd: .value("yEnd", $0.y + 1)
            )
            .foregroundStyle(by: .value("Level", $0.level))
        }
        .chartForegroundStyleScale(range: Gradient(colors: [.white, .green]))
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .frame(height: Constants.overviewHeight)
    }
    
}

struct ContributionsRectangleChart_Previews: PreviewProvider {
    static var previews: some View {
        ContributionsRectangleChart()
    }
}
