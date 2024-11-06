//
//  ContentView.swift
//  ChartExercise
//
//  Created by Ansheng Zhou on 2024-11-05.
//

import SwiftUI
import Charts

// 定义 HouseData 结构
struct HouseData: Identifiable {
    let id = UUID()
    let name: String
    let percentage: Double

    init(name: String, percentage: Double) {
        self.name = name
        self.percentage = percentage
    }
}

let houseData = [
    HouseData(name: "Matthews", percentage: 5.2),
    HouseData(name: "Ross", percentage: 6.2),
    HouseData(name: "Parent", percentage: 6.2),
    HouseData(name: "Ondaatje", percentage: 7.6),
    HouseData(name: "Uplands", percentage: 8.1),
    HouseData(name: "Colebrook", percentage: 8.1),
    HouseData(name: "Rashleigh", percentage: 8.1),
    HouseData(name: "Cooper", percentage: 9.0),
    HouseData(name: "Memorial", percentage: 9.5),
    HouseData(name: "Grove", percentage: 9.5),
    HouseData(name: "Moodie", percentage: 10.4),
    HouseData(name: "Ryder", percentage: 12.3)
]



struct ContentView: View {
    var body: some View {
        Chart {
            ForEach(houseData) { house in
                SectorMark(
                    angle: .value("Percentage", house.percentage)
                )
                .foregroundStyle(by: .value("House", house.name))
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
