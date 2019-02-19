if ! [ -x "$(command -v terraform)" ]; then
  brew install terraform
fi

terraform init && ssh-keygen -f .ssh/key -N ''
