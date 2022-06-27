//
//  VBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct VBarChart: View {
    
    var body: some View {
        Chart(MockData.countrySales, id: \.name) {
            BarMark(
                x: .value("Name", $0.name),
                y: .value("Sales", $0.sales)
            )
            .foregroundStyle(.red)
        }
        .chartYAxis {
            AxisMarks( preset: .extended, position: .leading)
        }
        .frame(height: Constants.overviewHeight)
    }
    
}

struct VBarChart_Previews: PreviewProvider {
    static var previews: some View {
        VBarChart()
    }
}
