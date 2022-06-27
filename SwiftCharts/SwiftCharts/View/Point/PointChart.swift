//
//  PointChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct PointChart: View {
    var body: some View {
        Chart(MockData.salesDetail, id: \.month) {
            PointMark(
                x: .value("Month", $0.month),
                y: .value("Sales", $0.sales)
            )
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct PointChart_Previews: PreviewProvider {
    static var previews: some View {
        PointChart()
    }
}
