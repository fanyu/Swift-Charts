//
//  DulePointChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct DulePointChart: View {
    var body: some View {
        Chart(MockData.seriesData, id: \.city) { series in
            ForEach(series.data, id: \.weekday) { element in
                PointMark(
                    x: .value("Day", element.weekday, unit: .day),
                    y: .value("Sales", element.sales)
                )
                .foregroundStyle(by: .value("City", series.city))
                .symbol(by: .value("City", series.city))
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct DulePointChart_Previews: PreviewProvider {
    static var previews: some View {
        DulePointChart()
    }
}
