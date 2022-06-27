//
//  DualRangeBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct DualRangeBarChart: View {
    var body: some View {
        Chart(MockData.salesDetailConstrast, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                yStart: .value("DailyMin", $0.dailyMin),
                yEnd: .value("DailyMax", $0.dailyMax),
                width: .fixed(10)
            )
            .foregroundStyle(.pink)
            .clipShape(Capsule())
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct DualRangeBarChart_Previews: PreviewProvider {
    static var previews: some View {
        DualRangeBarChart()
    }
}
