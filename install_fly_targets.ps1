$UrlProdConcourse = 'https://concourse.mktp.io'

# check version and notify that it's not tested on other versions

# check if fly is installed

# array of hashtables
$targets = @(
  terraformf5 = {
    url: $UrlProdConcourse
    team: f5
    target: terraform-f5
  },

$data = @(
  [pscustomobject]@{target='terraform-f5';team='f5';url=$UrlProdConcourse}
  [pscustomobject]@{FirstName='John'; LastName='Doe'}
)

# foreach-object - 


# install fly targets