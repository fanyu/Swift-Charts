//
//  BarWithRuleChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct BarWithRuleChart: View {
    
    private let averageValue = 147
    
    var body: some View {
        Chart {
            ForEach(MockData.salesDetail, id: \.month) {
                BarMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax),
                    width: .ratio(0.6)
                )
                .opacity(0.3)
                RectangleMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage),
                    width: .ratio(0.6),
                    height: 2
                )
            }
            .foregroundStyle(.gray.opacity(0.5))

            RuleMark(
                y: .value("Average", averageValue)
            )
            .lineStyle(StrokeStyle(lineWidth: 3))
            .annotation(position: .top, alignment: .leading) {
                Text("Average: \(averageValue, format: .number)")
                    .font(.headline)
                    .foregroundStyle(.blue)
            }
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct BarWithRuleChart_Previews: PreviewProvider {
    static var previews: some View {
        BarWithRuleChart()
    }
}
