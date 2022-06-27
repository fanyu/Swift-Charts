//
//  OneBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct OneBarChart: View {
    var body: some View {
        Chart(MockData.storgeUsage, id: \.category) {
            BarMark(x: .value("Usage", $0.size))
                .foregroundStyle(by: .value("Category", $0.category))
        }
        .chartPlotStyle { plotArea in
            plotArea
                .background(Color(.systemFill))
                .cornerRadius(8)
        }
        .chartXScale(range: 0...128)
        .chartLegend(position: .bottom, spacing: -10)
        .frame(height: 64)
        .padding()
    }
}

struct OneBarChart_Previews: PreviewProvider {
    static var previews: some View {
        OneBarChart()
    }
}
