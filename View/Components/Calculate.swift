//
//  Calculate.swift
//  Calculater
//
//  Created by G Bannikoppa, Naveen on 26/10/22.
//

import SwiftUI

extension ContentView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        @EnvironmentObject private var viewModel: ViewModel
        
        var body: some View {
            Button(buttonType.description) {
                viewModel.performAction(for: buttonType)
            }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: getBackgroundColor(),
                    foregroundColor: getForegroundColor(),
                    isWide: buttonType == .digit(.zero))
                )
        }
        
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
        
        private func getBackgroundColor() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.foregroundColor : buttonType.backgroundColor
        }
        
        private func getForegroundColor() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.backgroundColor : buttonType.foregroundColor
        }
    }
}

//struct Calculate_Previews: PreviewProvider {
//    static var previews: some View {
//        Calculate()
//    }
//}
