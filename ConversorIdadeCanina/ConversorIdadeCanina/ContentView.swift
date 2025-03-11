//
//  ContentView.swift
//  ConversorIdadeCanina
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeh: Int = 0
    var body: some View {
        VStack {
            Image(systemName: "cachorro")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora idade canina!")
            TextField(
                "Informe a idade Humana",
                text: $idadeh
            )
            .keyboardType(.Numberpad)
            
            
            Button(action: calcularIdade) {
                Text("Calcular")
                foregroundColor(.branco)
            }
        }
        .padding()
        
        
        
    }
    
    func calcularIdade(){
        if (idadeh>0){
            print(idadeh * 7)
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
