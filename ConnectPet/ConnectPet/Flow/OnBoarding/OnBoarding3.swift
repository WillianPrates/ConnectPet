
import SwiftUI

struct OnBoarding3: View {
    var body: some View {
        VStack {
            Image("3")
                .resizable()
                .scaledToFill()
                .frame(width: 281, height: 399)
            Text("Compartilhe o histórico do seu pet com qualquer pessoa")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.corTexto)
                .frame(width: 250)
        }
    }
}
