//
//  DataManager.swift
//  FitnessApp
//
//  Created by Anik on 12/8/20.
//

import SwiftUI

class DataManager: ObservableObject {
    @Published var bpmsValue = bpms
    var lastSelectedBPM = -1
    
    func selectData(bpm: Models.BPM) {
        if let foundIndex = bpmsValue.firstIndex(where: { $0.id == bpm.id }) {
            bpmsValue[foundIndex].selected.toggle()
            if (foundIndex == lastSelectedBPM) {
                lastSelectedBPM = -1
            } else {
                if lastSelectedBPM != -1 {
                    bpmsValue[lastSelectedBPM].selected.toggle()
                }
                lastSelectedBPM = foundIndex
            }
        }
    }
}
