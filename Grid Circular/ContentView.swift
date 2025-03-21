import SwiftUI
import SpriteKit

struct ContentView: View {
    var body: some View {
        ZStack {
            SpriteView(scene: SKGridCircular())
            
            VStack {
                Spacer()

                HStack{
                    Spacer()
                }
            }

        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
