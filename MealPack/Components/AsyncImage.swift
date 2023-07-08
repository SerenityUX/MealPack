import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    var cancellable: AnyCancellable?
    
    init(url: URL) {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
}

struct AsyncImage: View {
    @ObservedObject private var loader: ImageLoader
    private let placeholder: Image
    
    init(urlString: String, placeholder: Image = Image(systemName: "photo")) {
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL: \(urlString)")
        }
        self.loader = ImageLoader(url: url)
        self.placeholder = placeholder
    }

    var body: some View {
        ZStack {
            if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .clipped()
            } else {
                placeholder
                    .resizable()
                    .scaledToFill()
                    .clipped()
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
        }
        .background(Color.gray)
    }
}
