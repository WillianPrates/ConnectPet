import SwiftUI

struct FeedView: View {
    @State private var selectedDate = Date()
    @State private var isAnimated = false
    
    let corBackground = LinearGradient(gradient: Gradient(colors: [Color("Gradiente-Purple"), Color("Gradiente-Blue")]), startPoint: .leading, endPoint: .trailing)
    let buttonWidth: CGFloat = 150
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    // Adicione o DatePicker acima dos botões
                    DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .background(Color.white)
                        .cornerRadius(10)
                        .opacity(isAnimated ? 1 : 0) // Configura a opacidade inicial
                        .tint(.purpleButtonTab)
                    
                    HStack {
                        Button(action: {
                            print("Botão pressionado!")
                        }, label: {
                            VStack {
                                Text("Cartilha de Vacinação")
                                    .foregroundColor(.black)
                                    .bold()
                                    .frame(width: buttonWidth)
                                Image(systemName: "syringe")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(.blue)
                            }
                            .frame(width: 180, height: 100)
                            .background(.laranja)
                            .cornerRadius(10)
                        })
                        .opacity(isAnimated ? 1 : 0) // Configura a opacidade inicial
                        
                        Spacer()
                        
                        Button(action: {
                            print("Botão pressionado!")
                        }, label: {
                            VStack {
                                Text("Histórico de Consultas")
                                    .foregroundColor(.black)
                                    .bold()
                                    .frame(width: buttonWidth)
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(.green)
                            }
                            .frame(width: 180, height: 100)
                            .background(.rosa)
                            .cornerRadius(10)
                        })
                        .opacity(isAnimated ? 1 : 0) // Configura a opacidade inicial
                    }
                    
                    HStack {
                        Button(action: {
                            print("Botão pressionado!")
                        }, label: {
                            VStack {
                                Text("Histórico de Exames")
                                    .foregroundColor(.black)
                                    .bold()
                                    .frame(width: buttonWidth)
                                Image(systemName: "pencil.and.list.clipboard")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(.orange)
                            }
                            .frame(width: 180, height: 100)
                            .background(.azul)
                            .cornerRadius(10)
                        })
                        .opacity(isAnimated ? 1 : 0) // Configura a opacidade inicial
                        
                        Spacer()
                        
                        Button(action: {
                            print("Botão pressionado!")
                        }, label: {
                            VStack {
                                Text("Histórico de Medicações")
                                    .foregroundColor(.black)
                                    .bold()
                                    .frame(width: buttonWidth)
                                Image(systemName: "pills")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                    .foregroundColor(.purple)
                            }
                            .frame(width: 180, height: 100)
                            .background(.verde)
                            .cornerRadius(10)
                        })
                        .opacity(isAnimated ? 1 : 0) // Configura a opacidade inicial
                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 8)
                .padding(.bottom, 15)
            }
            .navigationTitle("Feed")
            .background(corBackground)
            .onAppear {
                // Adiciona animação de fade-in quando a tela aparece
                withAnimation(.easeIn(duration: 0.5)) {
                    self.isAnimated = true
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
