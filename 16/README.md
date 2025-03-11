# Day 16 Matcher 介紹 (上)

|本期版本|上期版本
|:---:|:---:|
`Tue Mar 11 13:25:35 CST 2025` | `Fri Oct 13 23:20:14 CST 2023`

* 首先我想先介紹一個超基本的用法 not_to，基本上就是把我們常用的 to 替代掉而已

## Comparison matchers

> [Class: RSpec::Matchers::BuiltIn::BeComparedTo](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BeComparedTo)、`be <operator> value`

```ruby
it { is_expected.to be > 40 }
```


## Predicate matchers

> [Class: RSpec::Matchers::BuiltIn::BePredicate](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BePredicate)

* predicate method 在 Ruby 的世界中，**都泛指回傳 boolean 的方法！**
* 而在 Ruby 的慣例中，predicate method 通常都會用 ? 做結尾。

**所有 Ruby 的 predicate method 都可以直接無痛的轉移成 Rspec 的 matcher！**

* 就是把問號拔掉，前面用 `be_` 串接上去


```ruby
expect(16.even?).to eq(true)
expect(16).to be_even
```

> [Class: RSpec::Matchers::BuiltIn::BeAnInstanceOf](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BeAnInstanceOf)

```ruby
expect("string").to be_an_instance_of(String)
"string".instance_of?(String)
```
