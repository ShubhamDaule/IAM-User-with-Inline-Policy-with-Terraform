# create an iam user
resource "aws_iam_user" "iam_user" {
  name = "terraform-test"
}

# give the iam user programatic access
resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.iam_user.name
}

# create the inline policy
data "aws_iam_policy_document" "sample_policy" {
  statement {
    actions = [
        "s3:Get*",
        "s3:List*",
        "s3-object-lambda:Get*",
        "s3-object-lambda:List*"
    ]

    resources = [
        "*"
    ]
  }
}

# attach the policy to the user
resource "aws_iam_user_policy" "s3_get_put_detele_policy" {
  name    = "sample_policy"
  user    = aws_iam_user.iam_user.name
  policy  = data.aws_iam_policy_document.sample_policy.json
}