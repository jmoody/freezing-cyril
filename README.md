Demonstrates `{}` does not implement stubbed? problem.


#### Reproduce

```
$ git clone git@github.com:jmoody/freezing-cyril.git
$ cd freezing-cyril
$ bundle install
$ bundle exec rspec spec/lib/launcher_spec.rb
```

#### Expected

An error not to be raised.

#### Found

```
   Failure/Error: stub_env('DEVICE_TARGET', 'device')
       {"RBENV_VERSION"=>"2.2.0",
          <snip>,
        "BUNDLE_ORIG_MANPATH"=>"/opt/local/share/man:"}
        does not implement: stubbed?
```

