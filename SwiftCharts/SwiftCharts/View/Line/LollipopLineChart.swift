//
//  LollipopLineChart.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/26.
//

import SwiftUI
import Charts

struct LollipopLineChart: View {
    
    @State private var selectedData: (weekday: Date, sales: Int)? = (weekday: date(year: 2022, month: 5, day: 4), sales: 88)
    
    var body: some View {
        Chart(MockData.sales, id: \.weekday) {
            LineMark(
                x: .value("Month", $0.weekday),
                y: .value("Sales", $0.sales)
            )
            .lineStyle(StrokeStyle(lineWidth: 2))
            .foregroundStyle(.blue.gradient)
            .interpolationMethod(.monotone)
            .symbol(Circle().strokeBorder(lineWidth: 4))
            .symbolSize(50)
        }
        .frame(height: Constants.overviewHeight)
        .padding()
        .chartOverlay { proxy in
            GeometryReader { geometry in
                Rectangle()
                    .fill(.clear)
                    .contentShape(Rectangle())
                    .gesture(
                        SpatialTapGesture()
                            .onEnded { value in
                                let saleData = saleData(location: value.location, proxy: proxy, geometry: geometry)
                                if selectedData?.weekday == saleData?.weekday {
                                    selectedData = saleData
                                } else {
                                    selectedData = nil
                                }
                            }
                            .exclusively(before: DragGesture()
                                .onChanged { value in
                                    selectedData = saleData(location: value.location, proxy: proxy, geometry: geometry)
                                }
                            )
                    )
            }
        }
        .chartBackground { proxy in
            GeometryReader { geo in
                if let selectedData {
                    let plotStart = geo[proxy.plotAreaFrame].origin.x
                    let xPosition = proxy.position(forX: selectedData.weekday) ?? 0
                    let lineX = plotStart + xPosition
                    let lineHeight = geo[proxy.plotAreaFrame].height
                    let lineWidth: CGFloat = 2
                    let hintViewWidth: CGFloat = 100
                    let hintOffset = max(0, min(geo.size.width - hintViewWidth, lineX - hintViewWidth / 2 - 4))
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(.pink)
                            .frame(width: lineWidth, height: lineHeight)
                            .position(x: lineX, y: lineHeight / 2)

                        VStack(alignment: .center) {
                            Text("\(selectedData.weekday, format: .dateTime.year().month().day())")
                                .font(.callout)
                                .foregroundStyle(.secondary)
                            Text("\(selectedData.sales, format: .number)")
                                .font(.title2.bold())
                                .foregroundColor(.primary)
                        }
                        .frame(width: hintViewWidth, alignment: .center)
                        .padding(5)
                        .background(Color.orange)
                        .cornerRadius(6)
                        .offset(x: hintOffset)
                    }
                }
            }
        }
        .chartXAxis(.automatic)
        .chartYAxis(.automatic)
    }
    
    private func saleData(location: CGPoint, proxy: ChartProxy, geometry: GeometryProxy) -> (weekday: Date, sales: Int)? {
        let xPosition = location.x - geometry[proxy.plotAreaFrame].origin.x
        if let date = proxy.value(atX: xPosition) as Date? {
            // closest date element at location
            var minDistance: TimeInterval = .infinity
            var index: Int? = nil
            for dataIndex in MockData.sales.indices {
                let nthDataDistance = MockData.sales[dataIndex].weekday.distance(to: date)
                if abs(nthDataDistance) < minDistance {
                    minDistance = abs(nthDataDistance)
                    index = dataIndex
                }
            }
            if let index {
                return MockData.sales[index]
            }
        }
        return nil
    }
}

struct LollipopLineChart_Previews: PreviewProvider {
    static var previews: some View {
        LollipopLineChart()
    }
}
