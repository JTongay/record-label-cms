#To clear caching issue with coffescript
```shell
rake tmp:cache:clear
```

#Start live reload server
```shell
guard
```

* You must set the `s3_region`
* If you are explicitly setting permissions anywhere, such as in an initializer,
  note that the format of the permissions changed from using an underscore to
  using a hyphen. For example, `:public_read` needs to be changed to
  `public-read`.

For a walkthrough of upgrading from 4 to 5 and aws-sdk >= 2.0 you can watch
http://rubythursday.com/episodes/ruby-snack-27-upgrade-paperclip-and-aws-sdk-in-prep-for-rails-5
