//
//  ActionSheetExampleView.swift
//  Alert-SwitfUI
//
//  Created by Юрий Станиславский on 04.01.2021.
//

import SwiftUI

struct ActionSheetExampleView: View {
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
        .actionSheet(isPresented: $isError, content: {
            ActionSheet(title: Text("Загрузка"),
                        message: Text("Вы уверены?"),
                        buttons: [.destructive(Text("Да"), action: {
                            print("Загрузка...")
                        }), .cancel()])
        })
    }
}

struct ActionSheetExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExampleView()
    }
}
