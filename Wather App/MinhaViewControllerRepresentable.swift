import SwiftUI

#if os(iOS)
import UIKit

struct MinhaViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MinhaViewController {
        MinhaViewController()
    }

    func updateUIViewController(_ uiViewController: MinhaViewController, context: Context) {
    }
}
#endif
