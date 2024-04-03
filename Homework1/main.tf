resource "aws_iam_user" "hw" {
  name = "jenny"
}

resource "aws_iam_user" "hw2" {
  name = "rose"
}

resource "aws_iam_user" "hw3" {
  name = "lisa"
}

resource "aws_iam_user" "hw4" {
  name = "jisoo"
}

resource "aws_iam_user" "hw5" {
  name = "jihyo"
}

resource "aws_iam_user" "hw6" {
  name = "sana"
}

resource "aws_iam_user" "hw7" {
  name = "momo"
}

resource "aws_iam_user" "hw8" {
  name = "dahyun"
}

resource "aws_iam_group" "hwg" {
  name = "blackpink"
}

resource "aws_iam_group" "hwg2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hw.name,
    aws_iam_user.hw2.name,
    aws_iam_user.hw3.name,
    aws_iam_user.hw4.name,
  ]

  group = aws_iam_group.hwg.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hw5.name,
    aws_iam_user.hw6.name,
    aws_iam_user.hw7.name,
    aws_iam_user.hw8.name,
  ]

  group = aws_iam_group.hwg2.name
}


resource "aws_iam_user" "hw9" {
  name = "miyeon"
}

resource "aws_iam_user" "hw10" {
  name = "mina"
}

#commands I have run to import users created manually:
# $ terraform import aws_iam_user.hw9 miyeon
# $ terraform import aws_iam_user.hw10 mina


resource "aws_iam_group_membership" "team3" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hw9.name,
  ]

  group = aws_iam_group.hwg.name
}

resource "aws_iam_group_membership" "team4" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hw10.name,
  ]

  group = aws_iam_group.hwg2.name
}