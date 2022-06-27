//
//  GradientLineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/27.
//

import SwiftUI
import Charts

struct GradientLineChart: View {
    
    @State private var selectedDate: Date?

    private let startDate = Calendar.current.startOfDay(for: Date())
    private let endDate = Calendar.current.startOfDay(for: Date()).addingTimeInterval(60*60*23)
    private let linearGradient = LinearGradient(
        stops: [Gradient.Stop(color: .green, location: 0),
                Gradient.Stop(color: .green, location: 2/14),
                Gradient.Stop(color: .yellow, location: 5/14),
                Gradient.Stop(color: .orange, location: 8/14),
                Gradient.Stop(color: .red, location: 10/14),
                Gradient.Stop(color: .purple, location: 14/14)],
        startPoint: .bottom,
        endPoint: .top
    )

    var body: some View {
        Chart {
            RectangleMark(
                xStart: .value("Hour", startDate),
                xEnd: .value("Hour", endDate)
            )
            .foregroundStyle(linearGradient)
            .mask {
                ForEach(MockData.hourlyUVIndex, id: \.date) {
                    AreaMark(
                        x: .value("Hour", $0.date),
                        y: .value("UVIndex", $0.uvIndex)
                    )
                    .interpolationMethod(.cardinal)
                    .foregroundStyle(.black.opacity(0.4))
                    
                    LineMark(
                        x: .value("Hour", $0.date),
                        y: .value("UVIndex", $0.uvIndex)
                    )
                    .interpolationMethod(.cardinal)
                    .lineStyle(StrokeStyle(lineWidth: 4))
                }
            }
            
            if let max = MockData.hourlyUVIndex.max(by: { $0.uvIndex < $1.uvIndex }) {
                PointMark(
                    x: .value("hour", max.date),
                    y: .value("uvIndex", max.uvIndex)
                )
                .symbolSize(CGSize(width: 12, height: 12))
                .foregroundStyle(.black)
                .annotation(spacing: 0) {
                    Text("Max \(max.uvIndex)")
                        .font(.headline.weight(.bold))
                        .foregroundColor(.secondary)
                }
            }
            
            if let selectedDate, let uvIndex = MockData.hourlyUVIndex.first(where: { $0.date == selectedDate })?.uvIndex {
                RuleMark(
                    x: .value("Hour", selectedDate)
                )
                .foregroundStyle(.foreground)
                .opacity(0.5)
                
                PointMark(
                    x: .value("Hour", selectedDate),
                    y: .value("UVIndex", uvIndex)
                )
                .symbolSize(CGSize(width: 10, height: 10))
                .foregroundStyle(.black)
                .annotation {
                    Text("\(uvIndex)")
                        .font(.subheadline.weight(.bold))
                        .foregroundColor(.black)
                }
            }
        }
        .frame(height: Constants.overviewHeight)
        .chartOverlay { proxy in
            GeometryReader { nthGeoItem in
                Rectangle()
                    .fill(.clear)
                    .contentShape(Rectangle())
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged { value in
                                let x = value.location.x - nthGeoItem[proxy.plotAreaFrame].origin.x
                                if let date: Date = proxy.value(atX: x), let roundedHour = date.nearestHour() {
                                    self.selectedDate = roundedHour
                                }
                            }
                            .onEnded { value in
                                self.selectedDate = nil
                            }
                    )
            }
        }
    }
    
}

struct GradientLineChart_Previews: PreviewProvider {
    static var previews: some View {
        GradientLineChart()
    }
}
