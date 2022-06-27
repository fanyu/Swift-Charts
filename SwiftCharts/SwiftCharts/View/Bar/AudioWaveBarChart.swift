//
//  StackBarChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/27.
//

import SwiftUI
import Charts

struct AudioWaveBarChart: View {
    
    private let data = Array(MockData.audioWave.enumerated())
    
    var body: some View {
        Chart(data, id: \.element) { index, element in
            BarMark(
                x: .value("index", index),
                y: .value("element", element),
                width: 20,
                stacking: .center
            )
            .foregroundStyle(.red)
            .clipShape(Capsule())
        }
        .chartYAxis(.hidden)
        .chartXAxis(.hidden)
        .frame(height: Constants.overviewHeight)
        .padding()
    }
}

struct StackBarChart_Previews: PreviewProvider {
    static var previews: some View {
        AudioWaveBarChart()
    }
}
