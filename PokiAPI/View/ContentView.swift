import SwiftUI

struct ContentView: View {
    @Environment(StateController.self) var stateController : StateController
    @State private var pokemonName: String = ""
    
    var body: some View {
        let pokemon = stateController.character
        
            VStack {
                TextField("Enter Pokemon Name:", text: $pokemonName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                Button(action: {
                    stateController.fetchPokemon(from: pokemonName)
                }, label: {
                    Text("Fetch Pokemon")
                        .foregroundStyle(.white)
                })
                .padding()
                .background(.blue)
                .clipShape(Capsule())
                Text(stateController.character?.name ?? "nil")
                AsyncImage(url: stateController.character?.sprites.front_default) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
            }
        } 
    }
}

#Preview {
    ContentView().environment(StateController())
}
