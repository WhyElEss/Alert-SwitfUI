//
//  AlertExampleView.swift
//  Alert-SwitfUI
//
//  Created by Юрий Станиславский on 04.01.2021.
//

import SwiftUI

struct AlertExampleView: View {
    @State private var isError = false
    
    var body: some View {
        showAlert()
    }
    
    fileprivate func showAlert() -> some View {
        Button(action: {
            isError = true
        }, label: {
            Text("Вход")
        })
        .alert(isPresented: $isError, content: {
            Alert(title: Text("Загрузка"),
                  message: Text("Вы уверены?"),
                  primaryButton: .destructive(Text("Да"), action: {
                    print("Вы вошли")
                  }),
                  secondaryButton: .cancel())
        })
    }
}

struct AlertExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}
