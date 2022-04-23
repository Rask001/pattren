let urlImage = "https://sun9-32.userapi.com/s/v1/if2/Cv7bSO6MjxXdAJEMm7LLOcVeiyFipRoFUwO4g6FI2xsrbk9t_t0bk1ksRBfqoPP1RFmgyvAjvIOKfUx3aj3RI_6k.jpg?size=2560x1708&quality=95&type=album"

@objc func showImageView() {
		guard let url = URL(string: urlImage) else { return }
		let session = URLSession.shared
		session.dataTask(with: url) { data, responce, error in
			if let data = data, let image = UIImage(data: data) {
				DispatchQueue.main.async {
					self.imageView.image = image
				}
			}
		}
		.resume()
	}
