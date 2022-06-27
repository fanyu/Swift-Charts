//
//  BarWithPointChart.swift.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct BarWithPointChart: View {
    var body: some View {
        Chart(MockData.salesDetail, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                yStart: .value("DailyMin", $0.dailyMin),
                yEnd: .value("DailyMax", $0.dailyMax),
                width: .fixed(10)
            )
            .foregroundStyle(.gray)
            .clipShape(Capsule())
            .opacity(0.5)
            
            PointMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("DailyAverage", $0.dailyAverage)
            )
            .foregroundStyle(.orange)
            .symbolSize(50)
            
            PointMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("DailyAverage", $0.dailyMax)
            )
            .offset(y: 5)
            .foregroundStyle(.green)
            .symbolSize(50)
            
            PointMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("DailyAverage", $0.dailyMin)
            )
            .offset(y: -5)
            .foregroundStyle(.red)
            .symbolSize(50)
        }
        .frame(height: Constants.overviewHeight)
        
    }
}

struct BarWithPointChart_Previews: PreviewProvider {
    static var previews: some View {
        BarWithPointChart()
    }
}
