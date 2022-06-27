//
//  BarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct HBarChart: View {
    
    var body: some View {
        Chart(MockData.countrySales, id: \.name) {
            BarMark(
                x: .value("Sales", $0.sales),
                y: .value("Name", $0.name)
            )
            .foregroundStyle(.red)
        }
        .frame(height: Constants.overviewHeight)
    }
}

struct HBarChart_Previews: PreviewProvider {
    static var previews: some View {
        HBarChart()
    }
}
