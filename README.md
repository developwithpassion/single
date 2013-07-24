# Single

Apply the `singleton` pattern to a class, and enable delegation from the class interface to the singleton instance.

## Status

NOTE: Dependencies are linked locally in the development environment via the [`path_gem` library](https://github.com/Sans/path-gem). Dependencies aren't installed by RubyGems.

## Usage

### Include Single

```ruby
class SingleObject
  include Single

  def some_method
    @some_value ||= Date.new
  end
end

date = SingleObject.some_method
SingleObject.some_method == date # true

# Sublcasses are separate singletons
class SubclassObject < SingleObject
end

SubclassObject.some_method != SingleObject.some_method # true
different_date = SubclassObject.some_method
SubclassObject.some_method == different_date # true
```

## License

Single is released under the [MIT License](https://github.com/Sans/single/blob/master/MIT-license.txt).
