//
//  AreaChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct AreaChart: View {
    
    var body: some View {
        Chart(MockData.dailySales, id: \.day) {
            AreaMark(
                x: .value("Date", $0.day, unit: .day),
                y: .value("Sales", $0.sales)
            )
            .interpolationMethod(.catmullRom)
            .foregroundStyle(gradient)
        }
        .frame(height: Constants.overviewHeight)
    }
    
    private var gradient: Gradient {
        let color = Color.pink
        var colors = [color]
        colors.append(color.opacity(-0.05))
        return Gradient(colors: colors)
    }

}

struct AreaChart_Previews: PreviewProvider {
    static var previews: some View {
        AreaChart()
    }
}
