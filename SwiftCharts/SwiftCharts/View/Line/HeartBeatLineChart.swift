//
//  HeartBeatLineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct HeartBeatLineChart: View {
    var body: some View {
        Chart {
            ForEach(Array(MockData.ecg.enumerated()), id: \.element) { index, element in
                LineMark(
                    x: .value("Index", index),
                    y: .value("Unit", element)
                )
                .foregroundStyle(.pink.gradient)
                .interpolationMethod(.cardinal)
            }
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .frame(height: Constants.overviewHeight)
    }
}

struct HeartBeatLineChart_Previews: PreviewProvider {
    static var previews: some View {
        HeartBeatLineChart()
    }
}
