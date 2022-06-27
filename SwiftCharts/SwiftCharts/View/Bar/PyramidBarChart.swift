//
//  PyramidBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI
import Charts

struct PyramidBarChart: View {
    var body: some View {
        Chart {
            ForEach(MockData.seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    BarMark(
                        xStart: .value("Sales", 0),
                        xEnd: .value("Sales", series.city == "Cupertino" ? $0.sales : $0.sales * -1),
                        y: .value("Weekday", $0.weekday, unit: .day)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
            }
        }
        .chartYAxis {
            AxisMarks(preset: .aligned, position: .automatic) { _ in
                AxisValueLabel(centered: true)
            }
        }
        .chartXAxis {
            AxisMarks(preset: .aligned, position: .automatic) { value in
                AxisGridLine()
                AxisValueLabel("\(abs(value.as(Int.self)!))")
            }
        }
        .chartLegend(position: .top, alignment: .center)
        .frame(height: Constants.overviewHeight)
    }
}

struct PyramidBarChart_Previews: PreviewProvider {
    static var previews: some View {
        PyramidBarChart()
    }
}
