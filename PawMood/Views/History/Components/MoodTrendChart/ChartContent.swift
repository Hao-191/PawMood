//
//  ChartContent.swift
//  PawMood
//
//  Created by WPH on 2025/4/8.
//
import SwiftUI
import Charts

struct ChartContent: View {
    let data: [CuddleData]
    @Binding var selectedData: CuddleData?
    var animate: Bool

    var body: some View {
        Chart {
            ForEach(data) { entry in
                AreaMark(
                    x: .value("Date", entry.dateLabel),
                    y: .value("Cuddles", animate ? entry.count : 0)
                )
                .foregroundStyle(.cyan.opacity(0.3))
                .interpolationMethod(.catmullRom)

                LineMark(
                    x: .value("Date", entry.dateLabel),
                    y: .value("Cuddles", animate ? entry.count : 0)
                )
                .lineStyle(StrokeStyle(lineWidth: 2))
                .foregroundStyle(.gray)
                .interpolationMethod(.catmullRom)

                PointMark(
                    x: .value("Date", entry.dateLabel),
                    y: .value("Cuddles", animate ? entry.count : 0)
                )
                .symbolSize(60)
                .foregroundStyle(entry == selectedData ? Color(red: 1.0, green: 0.4, blue: 0.7) : .cyan)
                .annotation(position: .top, alignment: .center) {
                    if selectedData?.id == entry.id {
                        Text("\(entry.count) cuddles")
                            .font(.caption)
                            .padding(6)
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white).shadow(radius: 2))
                    }
                }
            }
        }
        .chartOverlay { proxy in
            GeometryReader { geo in
                Rectangle()
                    .fill(Color.clear)
                    .contentShape(Rectangle())
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged { value in
                                if let frameAnchor = proxy.plotFrame {
                                    let plotFrame = geo[frameAnchor]  // no 'if let' needed here
                                    let xPos = value.location.x - plotFrame.origin.x
                                    if let date: String = proxy.value(atX: xPos),
                                       let match = data.first(where: { $0.dateLabel == date }) {
                                        selectedData = match
                                    }
                                }
                            }
                    )
            }
        }
        .chartXAxis {
            AxisMarks(values: .automatic) {
                AxisGridLine()
                AxisTick()
                AxisValueLabel()
            }
        }
        .chartYAxis {
            AxisMarks(position: .leading) {
                AxisGridLine()
                AxisTick()
                AxisValueLabel()
            }
        }
    }
}
