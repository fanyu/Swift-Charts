//
//  RangeAreaWithLineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts
struct RangeAreaWithLineChart: View {
    var body: some View {
        Chart {
            ForEach(MockData.salesDetail, id: \.month) {
                AreaMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax)
                )
                .opacity(0.3)
                LineMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage)
                )
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct RangeAreaWithLineChart_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaWithLineChart()
    }
}
