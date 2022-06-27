//
//  CandleBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct CandleBarChart: View {
    var body: some View {
        Chart(MockData.stocksData, id: \.date) {
            BarMark(
                x: .value("Date", $0.date, unit: .day),
                yStart: .value("Open", $0.open),
                yEnd: .value("Close", $0.close),
                width: 8
            )
            .foregroundStyle($0.open < $0.close ? .blue : .red)
            
            BarMark(
                x: .value("Date", $0.date, unit: .day),
                yStart: .value("High", $0.high),
                yEnd: .value("Low", $0.low),
                width: 2
            )
            .foregroundStyle($0.open < $0.close ? .blue : .red)
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .chartYScale(domain: 10...30)
        .frame(height: Constants.overviewHeight)
    }
}

struct CandleBarChart_Previews: PreviewProvider {
    static var previews: some View {
        CandleBarChart()
    }
}
