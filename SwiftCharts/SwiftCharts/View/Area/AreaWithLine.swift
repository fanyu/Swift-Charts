//
//  AreaWithLine.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct AreaWithLine: View {
    var body: some View {
        Chart(MockData.dailySales, id: \.day) {
            AreaMark(
                x: .value("Date", $0.day, unit: .day),
                y: .value("Sales", $0.sales)
            )
            .interpolationMethod(.catmullRom)
            .foregroundStyle(gradient)
            
            LineMark(
                x: .value("Date", $0.day, unit: .day),
                y: .value("Sales", $0.sales)
            )
            .lineStyle(StrokeStyle(lineWidth: 3))
            .foregroundStyle(.blue)
            .interpolationMethod(.catmullRom)
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

struct AreaWithLine_Previews: PreviewProvider {
    static var previews: some View {
        AreaWithLine()
    }
}
