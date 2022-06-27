//
//  DualBarByPositionChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct DualBarByPositionChart: View {
    var body: some View {
        Chart {
            ForEach(MockData.seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    BarMark(
                        x: .value("Weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .position(by: .value("City", series.city))
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct DualBarByPositionChart_Previews: PreviewProvider {
    static var previews: some View {
        DualBarByPositionChart()
    }
}
