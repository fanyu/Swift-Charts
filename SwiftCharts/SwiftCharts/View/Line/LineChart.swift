//
//  LineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct LineChart: View {
    var body: some View {
        Chart(MockData.sales, id: \.weekday) {
            LineMark(
                x: .value("Month", $0.weekday, unit: .day),
                y: .value("Sales", $0.sales)
            )
            .interpolationMethod(.monotone)
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        LineChart()
    }
}
