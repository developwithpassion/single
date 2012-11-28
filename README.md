single
======

`single` gem turns a class into a singleton.

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

### include Single

```ruby
class SingleObject
  include Single

  def some_method
    @some_value ||= Date.new
  end
end

date = SingleObject.some_method
SingleObject.some_method == date # true

# sublcasses are separate singletons
class SubclassObject < SingleObject
end

SubclassObject.some_method != SingleObject.some_method # true
different_date = SubclassObject.some_method
SubclassObject.some_method == different_date # true
```