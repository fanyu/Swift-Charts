//
//  ContentView.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Rectangle") {
                ContributionsRectangleChart()
                GradientRectangleChart()
            }
            Section("Area") {
                RangeAreaChart()
                StackedRangeAreaChart()
                AreaChart()
                RangeAreaChart()
                AreaWithLine()
            }
            Section("Line") {
                LineChart()
                DualLineChart()
                HeartBeatLineChart()
                InteractiveBrushingChart()
                AnimatingLineChart()
                LollipopLineChart()
                GradientLineChart()
            }
            Section("Point") {
                PointChart()
                DulePointChart()
            }
            Section("Bar") {
                HBarChart()
                VBarChart()
                DualBarChart()
                AudioWaveBarChart()
                DualBarByPositionChart()
                PyramidBarChart()
                OneBarChart()
                TimeSheetBarChart()
                RangeBarChart()
                DualRangeBarChart()
            }
            Section("Combine wiht Bar") {
                CandleBarChart()
                BarWithPointChart()
                BarWithRectangleChart()
                BarWithRuleChart()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
