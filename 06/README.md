# Day 6 RSpec 超基礎語法！

|本期版本|上期版本
|:---:|:---:|
`Mon Mar 10 22:50:22 CST 2025` | `Fri Oct 13 20:31:37 CST 2023`


## describe method

* 主要在解釋我們要測試的主要目標是什麼？

```ruby
Rspec.describe 'Burger'
# 而這邊也有一個 Ruby 小小的慣例，就是可以省略 ( ) 小括號，所以原本應該是這樣
RSpec.describe('Burger')
```

## it method

* 描述一個測試的行為，不是結果喔！

## expect & eq methods

* `expect`: 針對你傳入的參數進行運算，並且回傳一個物件。
* `to`: 需要接受一個叫做 matcher 的物件


```ruby
# expect(burger.type)
<RSpec::Expectations::ExpectationTarget:0x00007fb81f240278 @target="Big mac">

# eq('Big mac')
<RSpec::Matchers::BuiltIn::Eq:0x00007fdb92afa3f0 @expected="Big mac">
```