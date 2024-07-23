resource "aws_iam_user" "s3_users" {
  name = var.iam_name
  tags = {
    Name = var.iam_name
  }
}

resource "aws_iam_access_key" "s3_users_ak" {
  user = aws_iam_user.s3_users.name
}

resource "aws_iam_user_policy" "k10-user_policy" {
  name = var.user_policy
  user = aws_iam_user.s3_users.name

  policy = jsonencode({
    Version: "2012-10-17",
    Statement: [
      {
        Effect: "Allow",
        Action: "s3:*",
        Resource: "arn:aws:s3:::${var.BUCKETNAME}/*"
      }
    ]
  })
}