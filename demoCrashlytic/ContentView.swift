//
//  ContentView.swift
//  demoCrashlytic
//
//  Created by Chaiyasit Tayabovorn on 5/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack{
        // Index out of bound
        Button("Crash Me 1"){
          let numbers = [0]
          let _ = numbers[1]
        }
        
        // null pointer
        Button("Crash Me 2"){
          let numbers:Int? = nil
          let _ = numbers! + 1
        }
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
