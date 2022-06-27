//
//  RangeAreaChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts
struct RangeAreaChart: View {
    
    var body: some View {
        Chart {
            ForEach(MockData.salesDetail, id: \.month) {
                AreaMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax)
                )
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct RangeAreaChart_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaChart()
    }
}
