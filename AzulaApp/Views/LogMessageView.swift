//
//  LogMessageView.swift
//  AzulaApp
//
//  Created by Lilliana on 05/03/2023.
//

import AzulaKit
import SwiftUI

struct LogMessageView: View {
    let log: Log
    
    var body: some View {
        Text("[")
            .foregroundColor(.gray)
            .font(.system(size: 13, design: .monospaced))
        
        +
        
        Text(log.type == .info ? "*" : "!")
            .foregroundColor(log.type == .info ? .green : (log.type == .error ? .red : .yellow))
            .font(.system(size: 13, design: .monospaced))
        
        +
        
        Text("] ")
            .foregroundColor(.gray)
            .font(.system(size: 13, design: .monospaced))
        
        +
        
        Text(log.text)
            .font(.system(size: 13, design: .monospaced))
    }
}
