# loop is about looping a resource or a module

resource "null_resource" "test" {
  count = 10
}