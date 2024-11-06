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

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
