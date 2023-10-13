# Day 9 整理重複煩人的程式碼！

|本期版本|上期版本
|:---:|:---:|
`Fri Oct 13 20:41:46 CST 2023` |

## Before hooks

* 在每一個 example 前，做這件事情！

```ruby
# before(:example)

before do
  @burger = Burger.new('Beef', 'Cheddar')
end
```