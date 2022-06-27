//
//  StackedRangeAreaChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct StackedRangeAreaChart: View {
    var body: some View {
        Chart(MockData.seriesSaleDetail, id: \.series) { series in
            ForEach(series.data, id: \.month) {
                AreaMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax)
                )
                .foregroundStyle(by: .value("Series", series.series))
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct StackedRangeAreaChart_Previews: PreviewProvider {
    static var previews: some View {
        StackedRangeAreaChart()
    }
}
