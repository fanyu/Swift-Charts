//
//  MockData.swift
//  SwiftCharts
//
//  Created by FanYu on 2022/6/25.
//

import Foundation

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
}

struct Point: Identifiable {
    var x: Double
    var y: Double

    var id: some Hashable { x }
}

struct MockData {
    
    static let points = stride(from: -1, through: 1, by: 0.01).map {
        Point(x: $0, y: pow($0, 3))
    }
    
    static let stocksData = [
        (date: date(year: 2022, month: 5, day: 8), open: 20, close: 18.0, high: 22.0, low: 16.0),
        (date: date(year: 2022, month: 5, day: 9), open: 25.1, close: 24.0, high: 25.0, low: 21.0),
        (date: date(year: 2022, month: 5, day: 10), open: 20.2, close: 28.0, high: 28.0, low: 20.0),
        (date: date(year: 2022, month: 5, day: 11), open: 26.3, close: 20.0, high: 26.0, low: 20.0),
        (date: date(year: 2022, month: 5, day: 12), open: 18.2, close: 24.0, high: 28.0, low: 20.0),
    ]
    
    static let contribution = [
        (x: 0, y: 0, level: 0),
        (x: 1, y: 0, level: 1),
        (x: 2, y: 0, level: 2),
        (x: 3, y: 0, level: 3),
        (x: 4, y: 0, level: 2),
        (x: 5, y: 0, level: 1),
        (x: 6, y: 0, level: 5),
        
        (x: 0, y: 1, level: 4),
        (x: 1, y: 1, level: 3),
        (x: 2, y: 1, level: 2),
        (x: 3, y: 1, level: 4),
        (x: 4, y: 1, level: 0),
        (x: 5, y: 1, level: 2),
        (x: 6, y: 1, level: 3),
        
        (x: 0, y: 2, level: 1),
        (x: 1, y: 2, level: 5),
        (x: 2, y: 2, level: 4),
        (x: 3, y: 2, level: 3),
        (x: 4, y: 2, level: 2),
        (x: 5, y: 2, level: 1),
        (x: 6, y: 2, level: 0),
        
        (x: 0, y: 3, level: 1),
        (x: 1, y: 3, level: 2),
        (x: 2, y: 3, level: 3),
        (x: 3, y: 3, level: 4),
        (x: 4, y: 3, level: 5),
        (x: 5, y: 3, level: 2),
        (x: 6, y: 3, level: 4),
    ]
    
    static let storgeUsage = [
        (category: "Apps", size: 61),
        (category: "Photos", size: 10),
        (category: "iOS", size: 8),
        (category: "System Data", size: 3.6)
    ]
    
    static let countrySales = [
        (name: "China", sales: 916),
        (name: "India", sales: 850),
        (name: "Crêpe", sales: 802),
        (name: "Jian Bing", sales: 753),
        (name: "Dosa", sales: 654),
        (name: "American", sales: 618)
    ]
    
    static let dailySales: [(day: Date, sales: Int)] = [
        (day: date(year: 2022, month: 5, day: 8), sales: 168),
        (day: date(year: 2022, month: 5, day: 9), sales: 117),
        (day: date(year: 2022, month: 5, day: 10), sales: 106),
        (day: date(year: 2022, month: 5, day: 11), sales: 119),
        (day: date(year: 2022, month: 5, day: 12), sales: 109),
        (day: date(year: 2022, month: 5, day: 13), sales: 104),
        (day: date(year: 2022, month: 5, day: 14), sales: 196),
        (day: date(year: 2022, month: 5, day: 15), sales: 172),
        (day: date(year: 2022, month: 5, day: 16), sales: 122),
        (day: date(year: 2022, month: 5, day: 17), sales: 115),
        (day: date(year: 2022, month: 5, day: 18), sales: 138),
        (day: date(year: 2022, month: 5, day: 19), sales: 110),
        (day: date(year: 2022, month: 5, day: 20), sales: 106),
        (day: date(year: 2022, month: 5, day: 21), sales: 187),
        (day: date(year: 2022, month: 5, day: 22), sales: 187),
        (day: date(year: 2022, month: 5, day: 23), sales: 119),
        (day: date(year: 2022, month: 5, day: 24), sales: 160),
        (day: date(year: 2022, month: 5, day: 25), sales: 144),
        (day: date(year: 2022, month: 5, day: 26), sales: 152),
        (day: date(year: 2022, month: 5, day: 27), sales: 148),
        (day: date(year: 2022, month: 5, day: 28), sales: 240),
        (day: date(year: 2022, month: 5, day: 29), sales: 242),
        (day: date(year: 2022, month: 5, day: 30), sales: 173),
        (day: date(year: 2022, month: 5, day: 31), sales: 143),
        (day: date(year: 2022, month: 6, day: 1), sales: 137),
        (day: date(year: 2022, month: 6, day: 2), sales: 123),
        (day: date(year: 2022, month: 6, day: 3), sales: 146),
        (day: date(year: 2022, month: 6, day: 4), sales: 214),
        (day: date(year: 2022, month: 6, day: 5), sales: 250),
        (day: date(year: 2022, month: 6, day: 6), sales: 146)
    ]
    
    static let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
    
    static let monthDetail = [
        (month: date(year: 2021, month: 7), dailyMin: 10, dailyMax: 54),
        (month: date(year: 2021, month: 7), dailyMin: 66, dailyMax: 120),
        (month: date(year: 2021, month: 9), dailyMin: 130, dailyMax: 214),
        (month: date(year: 2021, month: 9), dailyMin: 236, dailyMax: 333),
        (month: date(year: 2021, month: 11), dailyMin: 340, dailyMax: 380),
    ]
    
    static let sales = [
        (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
        (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
        (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
        (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
        (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
        (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
        (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
    ]
    
    static let seriesSaleDetail = [
        (
            series: "Series1", data: [
                (month: date(year: 2021, month: 7), dailyMin: 95, dailyMax: 224),
                (month: date(year: 2021, month: 8), dailyMin: 96, dailyMax: 249),
                (month: date(year: 2021, month: 9), dailyMin: 101, dailyMax: 214),
                (month: date(year: 2021, month: 10), dailyMin: 106, dailyMax: 193),
                (month: date(year: 2021, month: 11), dailyMin: 104, dailyMax: 202),
                (month: date(year: 2021, month: 12), dailyMin: 96, dailyMax: 280),
                (month: date(year: 2022, month: 1), dailyMin: 96, dailyMax: 243),
                (month: date(year: 2022, month: 2), dailyMin: 98, dailyMax: 260),
                (month: date(year: 2022, month: 3), dailyMin: 104, dailyMax: 218)
            ]
        ),
        (
            series: "Series2", data: [
                (month: date(year: 2021, month: 7), dailyMin: 65, dailyMax: 124),
                (month: date(year: 2021, month: 8), dailyMin: 66, dailyMax: 169),
                (month: date(year: 2021, month: 9), dailyMin: 71, dailyMax: 164),
                (month: date(year: 2021, month: 10), dailyMin: 76, dailyMax: 123),
                (month: date(year: 2021, month: 11), dailyMin: 74, dailyMax: 182),
                (month: date(year: 2021, month: 12), dailyMin: 76, dailyMax: 170),
                (month: date(year: 2022, month: 1), dailyMin: 76, dailyMax: 183),
                (month: date(year: 2022, month: 2), dailyMin: 70, dailyMax: 180),
                (month: date(year: 2022, month: 3), dailyMin: 84, dailyMax: 190)
            ]
        ),
        (
            series: "Series3", data: [
                (month: date(year: 2021, month: 7), dailyMin: 45, dailyMax: 104),
                (month: date(year: 2021, month: 8), dailyMin: 46, dailyMax: 119),
                (month: date(year: 2021, month: 9), dailyMin: 51, dailyMax: 94),
                (month: date(year: 2021, month: 10), dailyMin: 46, dailyMax: 113),
                (month: date(year: 2021, month: 11), dailyMin: 54, dailyMax: 102),
                (month: date(year: 2021, month: 12), dailyMin: 46, dailyMax: 120),
                (month: date(year: 2022, month: 1), dailyMin: 46, dailyMax: 100),
                (month: date(year: 2022, month: 2), dailyMin: 48, dailyMax: 110),
                (month: date(year: 2022, month: 3), dailyMin: 54, dailyMax: 88)
            ]
        )
    ]
    
    static let salesDetail = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]
    
    static let salesDetailConstrast = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 20, dailyMax: 100),
        (month: date(year: 2021, month: 7), sales: 4044, dailyAverage: 130, dailyMin: 126, dailyMax: 189),
        (month: date(year: 2021, month: 8), sales: 3930, dailyAverage: 131, dailyMin: 20, dailyMax: 104),
        (month: date(year: 2021, month: 8), sales: 4217, dailyAverage: 136, dailyMin: 120, dailyMax: 193),
        (month: date(year: 2021, month: 9), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 9), sales: 3994, dailyAverage: 129, dailyMin: 16, dailyMax: 90),
        (month: date(year: 2021, month: 10), sales: 4202, dailyAverage: 136, dailyMin: 150, dailyMax: 203),
        (month: date(year: 2021, month: 10), sales: 3749, dailyAverage: 134, dailyMin: 20, dailyMax: 90),
        (month: date(year: 2021, month: 11), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 178),
        (month: date(year: 2021, month: 11), sales: 4084, dailyAverage: 136, dailyMin: 10, dailyMax: 100),
        (month: date(year: 2021, month: 12), sales: 4559, dailyAverage: 147, dailyMin: 114, dailyMax: 152),
        (month: date(year: 2021, month: 12), sales: 1023, dailyAverage: 170, dailyMin: 50, dailyMax: 100)
    ]

    static let monthlySales = [
        (month: date(year: 2021, month: 7), sales: 3952),
        (month: date(year: 2021, month: 8), sales: 4044),
        (month: date(year: 2021, month: 9), sales: 3930),
        (month: date(year: 2021, month: 10), sales: 4217),
        (month: date(year: 2021, month: 11), sales: 4006),
        (month: date(year: 2021, month: 12), sales: 3994),
        (month: date(year: 2022, month: 1), sales: 4202),
        (month: date(year: 2022, month: 2), sales: 3749),
        (month: date(year: 2022, month: 3), sales: 4329),
        (month: date(year: 2022, month: 4), sales: 4084),
        (month: date(year: 2022, month: 5), sales: 4559),
        (month: date(year: 2022, month: 6), sales: 1023)
    ]
    
    static let ecg = [
        -24.85,-27.789,-30.721,-31.867,-29.098,-24.769,-20.448,-18.471,-22.048,-28.335,-34.92,-40.15,-41.295,-40.298,-39.131,-38.228,-38.787,-40.104,-41.271,-42.454,-43.53,-44.554,-45.698,-46.838,-47.87,-48.817,-49.68,-50.44,-51.093,-51.638,-52.074,-52.41,-52.661,-52.814,-52.855,-52.782,-52.592,-52.28,-51.845,-51.284,-50.593,-49.775,-48.829,-47.76,-46.569,-45.263,-43.845,-42.322,-40.701,-38.991,-37.201,-35.341,-33.422,-31.456,-29.455,-27.432,-25.403,-23.383,-21.387,-19.432,-17.532,-15.703,-13.962,-12.324,-10.801,-9.406,-8.152,-7.052,-6.116,-5.357,-4.789,-4.424,-4.274,-4.347,-4.65,-5.183,-5.95,-6.946,-8.155,-9.559,-11.146,-12.911,-14.858,-16.994,-19.309,-21.811,-24.537,-27.53,-30.8,-34.327,-38.037,-41.845,-45.711,-49.497,-52.896,-55.684,-57.81,-59.309,-60.402,-60.665,-58.979,-55.025,-49.652,-46.15,-49.198,-61.31,-81.357,-102.689,-116.516,-116.236,-99.852,-73.817,-47.551,-30.257,-29.211,-42.633,-65.345,-90.584,-108.755,-116.958,-115.152,-104.292,-90.982,-78.751,-68.999,-63.916,-61.256,-59.412,-58.72,-58.492,-59.125,-60.798,-62.259,-61.879,-58.02,-49.005,-33.062,-9.603,20.374,55.722,95.506,140.379,192.397,250.829,310.179,360.475,391.442,397.79,381.279,350.058,312.359,273.171,234.032,192.77,148.393,102.346,57.14,16.725,-16.059,-40.567,-57.026,-66.258,-69.401,-67.413,-61.491,-53.54,-45.423,-38.287,-32.747,-28.934,-26.664,-25.775,-25.971,-26.521,-26.593,-25.736,-23.844,-21.105,-17.855,-14.344,-10.77,-7.442,-4.723,-2.83,-1.823,-1.636,-2.097,-3.064,-4.441,-6.116,-7.959,-9.854,-11.682,-13.334,-14.76,-15.919,-16.777,-17.321,-17.53,-17.397,-16.943,-16.203,-15.211,-14.006,-12.614,-11.058,-9.37,-7.586,-5.745,-3.889,-2.045,-0.227,1.556,3.298,4.998,6.658,8.29,9.914,11.548,13.203,14.892,16.622,18.408,20.263,22.202,24.238,26.384,28.65,31.045,33.58,36.262,39.097,42.09,45.242,48.556,52.035,55.683,59.5,63.487,67.642,71.964,76.449,81.092,85.886,90.82,95.884,101.066,106.351,111.725,117.17,122.67,128.205,133.755,139.3,144.816,150.282,155.673,160.965,166.134,171.154,176,180.647,185.072,189.248,193.153,196.764,200.059,203.016,205.617,207.841,209.674,211.098,212.101,212.67,212.798,212.476,211.701,210.468,208.779,206.635,204.041,201.003,197.529,193.631,189.321,184.614,179.528,174.081,168.294,162.19,155.792,149.126,142.217,135.095,127.785,120.319,112.724,105.031,97.269,89.468,81.659,73.87,66.131,58.468,50.91,43.482,36.21,29.115,22.221,15.548,9.115,2.938,-2.967,-8.586,-13.907,-18.921,-23.62,-27.996,-32.048,-35.771,-39.166,-42.235,-44.98,-47.406,-49.519,-51.326,-52.838,-54.063,-55.014,-55.702,-56.142,-56.346,-56.331,-56.111,-55.702,-55.12,-54.383,-53.505,-52.503,-51.394,-50.193,-48.917,-47.579,-46.196,-44.782,-43.35,-41.914,-40.486,-39.077,-37.699,-36.361,-35.072,-33.84,-32.672,-31.574,-30.553,-29.612,-28.756,-27.987,-27.308,-26.721,-26.226,-25.824,-25.513,-25.293,-25.162,-25.118,-25.158,-25.28,-25.479,-25.752,-26.096,-26.506,-26.977,-27.504,-28.083,-28.709,-29.376,-30.079,-30.813,-31.573,-32.355,-33.154,-33.966,-34.787,-35.613,-36.44,-37.264,-38.084,-38.895,-39.696,-40.482,-41.253,-42.006,-42.74,-43.452,-44.142,-44.809,-45.452,-46.07,-46.662,-47.229,-47.771,-48.287,-48.777,-49.243,-49.686,-50.105,-50.504,-50.881,-51.24,-51.581,-51.906,-52.215,-52.509,-52.79,-53.058,-53.313,-53.556,-53.788,-54.008,-54.218,-54.417,-54.606,-54.785,-54.953,-55.111,-55.259,-55.395,-55.521,-55.635,-55.738,-55.83,-55.91,-55.979,-56.036,-56.082,-56.116,-56.139,-56.149,-56.148,-56.135,-56.109,-56.072,-56.025,-55.967,-55.9,-55.827,-55.747,-55.664,-55.58,-55.496,-55.416,-55.342,-55.276,-55.222,-55.182,-55.159,-55.157,-55.177,-55.225,-55.301,-55.409,-55.55,-55.728,-55.943,-56.197,-56.491,-56.825,-57.201,-57.618,-58.078,-58.578,-59.119,-59.699,-60.317,-60.969,-61.654,-62.366,-63.102,-63.857,-64.625,-65.401,-66.178,-66.948,-67.706,-68.443,-69.152,-69.824,-70.453,-71.028,-71.543,-71.989,-72.358,-72.644,-72.838,-72.935,-72.928,-72.812,-72.583,-72.237,-71.77,-71.179,-70.462,-69.619,-68.648,-67.552,-66.331,-64.989,-63.529,-61.958,-60.283,-58.51,-56.65,-54.712,-52.709,-50.655,-48.563,-46.448,-44.328,-42.217,-40.133,-38.092,-36.111,-34.205,-32.39,-30.679,-29.091,-27.639,-26.338,-25.204,-24.248,-23.483,-22.92,-22.569,-22.432,-22.514,-22.818,-23.349,-24.116,-25.125,-26.378,-27.874,-29.608,-31.572,-33.751,-36.121,-38.647,-41.294,-44.028,-46.819,-49.643,-52.476,-55.286,-58.034,-60.674,-63.165,-65.478,-67.586,-69.463,-71.096,-72.496,-73.698,-74.766,-75.761,-76.714,-77.652,-78.606,-79.613,-80.728,-82.026,-83.554,-85.375,-87.58,-90.174,-93.112,-96.265,-99.299,-101.844,-103.584,-104.119,-103.091,-100.477,-96.378,-91.152,-85.671,-80.666,-76.686,-74.46,-74.371,-76.109,-79.147,-82.252,-83.15,-79.835,-70.4,-53.335,-28.712,2.87,41.56,89.004,147.196,215.961,289.921,357.449,406.503,429.906,428.178,409.786,383.557,354.154,322.114,284.422,239.578,189.152,135.968,83.993,36.477,-4.531,-37.603,-62.448,-79.376,-88.904,-91.48,-87.797,-79.341,-68.224,-56.784,-46.579,-38.263,-32.171,-28.733,-28.311,-30.698,-34.881,-39.269,-42.822,-45.224,-46.397,-46.316,-44.763,-41.651,-37.468,-33.12,-29.257,-26.153,-23.866,-22.31,-21.571,-21.755,-22.718,-24.151,-25.764,-27.354,-28.822,-30.144,-31.252,-32.067,-32.559,-32.732,-32.617,-32.248,-31.643,-30.813,-29.773,-28.54,-27.142,-25.605,-23.96,-22.24,-20.481,-18.717,-16.971,-15.258,-13.588,-11.965,-10.387,-8.845,-7.322,-5.799,-4.26,-2.691,-1.078,0.595,2.346,4.191,6.148,8.229,10.45,12.822,15.356,18.061,20.945,24.012,27.266,30.707,34.336,38.155,42.162,46.356,50.733,55.288,60.015,64.906,69.952,75.14,80.458,85.891,91.422,97.033,102.705,108.418,114.15,119.879,125.58,131.23,136.803,142.275,147.619,152.81,157.823,162.633,167.214,171.544,175.599,179.356,182.796,185.898,188.644,191.018,193.005,194.591,195.766,196.52,196.846,196.737,196.192,195.209,193.789,191.935,189.653,186.951,183.838,180.325,176.427,172.159,167.538,162.583,157.314,151.753,145.924,139.85,133.558,127.072,120.42,113.628,106.723,99.733,92.685,85.607,78.523,71.461,64.445,57.501,50.651,43.917,37.321,30.884,24.622,18.555,12.697,7.064,1.667,-3.482,-8.373,-12.998,-17.351,-21.428,-25.226,-28.742,-31.978,-34.936,-37.617,-40.027,-42.173,-44.06,-45.698,-47.096,-48.263,-49.212,-49.953,-50.498,-50.861,-51.054,-51.089,-50.981,-50.742,-50.384,-49.922,-49.368,-48.733,-48.03,-47.272,-46.468,-45.63,-44.767,-43.89,-43.007,-42.127,-41.257,-40.404,-39.574,-38.773,-38.006,-37.275,-36.585,-35.937,-35.334,-34.777,-34.265,-33.799,-33.379,-33.002,-32.669,-32.378,-32.127,-31.913,-31.735,-31.591,-31.479,-31.396,-31.341,-31.31,-31.302,-31.316,-31.348,-31.398,-31.464,-31.543,-31.635,-31.738,-31.851,-31.973,-32.104,-32.242,-32.386,-32.538,-32.697,-32.862,-33.035,-33.215,-33.405,-33.604,-33.813,-34.033,-34.265,-34.51,-34.768,-35.041,-35.328,-35.63,-35.947,-36.279,-36.626,-36.988,-37.364,-37.753,-38.154,-38.567,-38.99,-39.422,-39.862,-40.309,-40.761,-41.216,-41.673,-42.13,-42.586,-43.04,-43.488,-43.93,-44.363,-44.786,-45.197,-45.594,-45.975,-46.338,-46.682,-47.004,-47.305,-47.582,-47.835,-48.063,-48.265,-48.44,-48.589,-48.712,-48.808,-48.878,-48.923,-48.943,-48.94,-48.913,-48.865,-48.796,-48.708,-48.602,-48.48,-48.342,-48.191,-48.028,-47.856,-47.675,-47.487,-47.296,-47.102,-46.908,-46.717,-46.529,-46.348,-46.175,-46.012,-45.862,-45.727,-45.608,-45.508,-45.427,-45.368,-45.333,-45.323,-45.339,-45.382,-45.454,-45.555,-45.687,-45.849,-46.043,-46.268,-46.525,-46.813,-47.133,-47.482,-47.86,-48.266,-48.699,-49.155,-49.632,-50.128,-50.64,-51.163,-51.696,-52.232,-52.768,-53.3,-53.822,-54.329,-54.816,-55.277,-55.706,-56.097,-56.443,-56.738,-56.977,-57.153,-57.26,-57.291,-57.242,-57.105,-56.877,-56.552,-56.126,-55.594,-54.953,-54.201,-53.336,-52.357,-51.262,-50.053,-48.732,-47.3,-45.762,-44.121,-42.382,-40.552,-38.637,-36.646,-34.588,-32.472,-30.31,-28.114,-25.898,-23.677,-21.465,-19.278,-17.132,-15.042,-13.024,-11.093,-9.263,-7.549
    ]
    
    static let hourlyUVIndex: [(date: Date, uvIndex: Int)] = [
        (.startOfDay.addingTimeInterval(3600*0), 0),
        (.startOfDay.addingTimeInterval(3600*1), 0),
        (.startOfDay.addingTimeInterval(3600*2), 0),
        (.startOfDay.addingTimeInterval(3600*3), 0),
        (.startOfDay.addingTimeInterval(3600*4), 0),
        (.startOfDay.addingTimeInterval(3600*5), 0),
        (.startOfDay.addingTimeInterval(3600*6), 0),
        (.startOfDay.addingTimeInterval(3600*7), 1),
        (.startOfDay.addingTimeInterval(3600*8), 4),
        (.startOfDay.addingTimeInterval(3600*9), 6),
        (.startOfDay.addingTimeInterval(3600*10), 9),
        (.startOfDay.addingTimeInterval(3600*11), 12),
        (.startOfDay.addingTimeInterval(3600*12), 12),
        (.startOfDay.addingTimeInterval(3600*13), 11),
        (.startOfDay.addingTimeInterval(3600*14), 9),
        (.startOfDay.addingTimeInterval(3600*15), 6),
        (.startOfDay.addingTimeInterval(3600*16), 3),
        (.startOfDay.addingTimeInterval(3600*17), 1),
        (.startOfDay.addingTimeInterval(3600*18), 0),
        (.startOfDay.addingTimeInterval(3600*19), 0),
        (.startOfDay.addingTimeInterval(3600*20), 0),
        (.startOfDay.addingTimeInterval(3600*21), 0),
        (.startOfDay.addingTimeInterval(3600*22), 0),
        (.startOfDay.addingTimeInterval(3600*23), 0)
    ]
    
    static let audioWave = [2,3,4,5,6,5,4,3,2]
    
}

extension Date {
    static var startOfDay: Date {
        Calendar.current.startOfDay(for: .now)
    }
    
    func nearestHour() -> Date? {
        var components = NSCalendar.current.dateComponents([.minute, .second, .nanosecond], from: self)
        let minute = components.minute ?? 0
        let second = components.second ?? 0
        let nanosecond = components.nanosecond ?? 0
        components.minute = minute >= 30 ? 60 - minute : -minute
        components.second = -second
        components.nanosecond = -nanosecond
        return Calendar.current.date(byAdding: components, to: self)
    }
}
