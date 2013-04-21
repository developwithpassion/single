# Single

Apply the `singleton` pattern to a class, and enable delegation from the class interface to the singleton instance

## Status

**Unreleased**

NOTE: Dependencies are linked locally in the development environment via the [`path_gem` library](https://github.com/Sans/path-gem). Dependencies aren't installed by RubyGems, and some dependencies aren't yet published.

## Installation

Install the gem itself.

    [PROJECTS]$ git clone ssh://git@$REPOSITORY_PATH/single.git
    [PROJECTS]$ cd single
    [PROJECTS/single]$ gem install bundler
    [PROJECTS/single]$ gem install path_gem
    [PROJECTS/single]$ bundle

Make the gem available for `path-gem`.

    cd $PATH_GEM_DIR
    [PATH_GEM_DIR]$ ln -s $PROJECTS/single single

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

Output is released under the [MIT License](http://www.opensource.org/licenses/MIT).
