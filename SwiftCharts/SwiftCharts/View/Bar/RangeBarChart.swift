//
//  RangeBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct RangeBarChart: View {
        
    var body: some View {
        Chart(MockData.salesDetail, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                yStart: .value("DailyMin", $0.dailyMin),
                yEnd: .value("DailyMax", $0.dailyMax),
                width: .fixed(10)
            )
            .foregroundStyle($0.dailyMax > 200 ? .red : .blue)
            .clipShape(Capsule())
        }
        .chartXAxis {
            AxisMarks( values: .stride(by: .month) ) { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel(
                    format: .dateTime.month(.narrow)
                )
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct RangeBarChart_Previews: PreviewProvider {
    static var previews: some View {
        RangeBarChart()
    }
}
