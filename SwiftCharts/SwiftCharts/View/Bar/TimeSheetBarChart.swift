//
//  TimeSheetBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct TimeSheetBarChart: View {
    var body: some View {
        Chart(MockData.monthDetail, id: \.month) {
            BarMark(
                xStart: .value("Min", $0.dailyMin),
                xEnd: .value("Max", $0.dailyMax),
                y: .value("Department", $0.month, unit: .month)
            )
            .clipShape(Capsule())
            .foregroundStyle(by: .value("Month", $0.month))
        }
        .frame(height: Constants.overviewHeight)
    }
    
}

struct TimeSheetBarChart_Previews: PreviewProvider {
    static var previews: some View {
        TimeSheetBarChart()
    }
}
