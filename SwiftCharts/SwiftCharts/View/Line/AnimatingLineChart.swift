//
//  AnimatingLineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct AnimatingLineChart: View {
       
    var x: Double = 0.3
    
    var body: some View {
        Chart(MockData.points) {
            LineMark(
                x: .value("X", $0.x),
                y: .value("Y", $0.y)
            )
            
            PointMark(
                x: .value("X", x),
                y: .value("Y", pow(x, 3))
            )
            .foregroundStyle(.red)
        }
        .frame(height: Constants.overviewHeight)
    }
    
}

struct AnimatingLineChart_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingLineChart()
    }
}
