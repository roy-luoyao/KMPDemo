import SwiftUI
import shared

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    
    var body: some View {
        VStack{
            ListView(phrases: viewModel.greetings)
        }
        .onAppear(perform: {
            Task{
                await viewModel.startObserving()
            }
        })
        
    }
}
struct ListView: View {
    let phrases: Array<String>
    
    var body: some View {
        List(phrases, id: \.self) {
            Text($0)
        }
    }
}

class ViewModel: ObservableObject {
    @Published var greetings: Array<String> = []
    
    func startObserving() async {
        let phrases =  Greeting().greet()
        for  await phrase in phrases {
            DispatchQueue.main.async {
                self.greetings.append(phrase)
            }
        }
    }
}
