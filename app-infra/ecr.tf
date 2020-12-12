resource "aws_ecr_repository" "book_service" {
  name                 = "book-service"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "bookshelf_service" {
  name                 = "bookshelf-service"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "book_ui" {
  name                 = "book-ui"
  image_tag_mutability = "MUTABLE"
}
