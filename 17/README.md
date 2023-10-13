# Day 17 Matcher 介紹 (中)

|本期版本|上期版本
|:---:|:---:|
`Fri Oct 13 23:23:44 CST 2023` | -

## all matcher

> [Class: RSpec::Matchers::BuiltIn::All](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/All)


```ruby
[1,3,5].each do |num|
	expect(num).to be_odd
end

expect([1,3,5]).to all(be_odd)
```

* 我們可以看到 all 後面可以接收所有 RSpec 的 matcher

## be matcher ( nil, falsy, truthy)

> * [Class: RSpec::Matchers::BuiltIn::BeTruthy](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BeTruthy)
> * [Class: RSpec::Matchers::BuiltIn::BeFalsey](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BeFalsey)
> * [Class: RSpec::Matchers::BuiltIn::BeNil](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/BeNil)

* 這個 be matcher 和之前提到的 be 不太一樣，這個主要是拿來測試 true & false 的值！

## change matcher

> [Class: RSpec::Matchers::BuiltIn::Change](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/Change)

* **先提一下為什麼我們要用 { } 而不是像平常一樣使用 ( )，是因為如果我們想要對物件執行 Ruby 方法的時候，都像這樣 block 的方式**
* 後面補上的 by(1) 寫法，就是改變的數值，因為每次都要寫 from...to... 實在是太麻煩了，於是 RSpec 也給我們這樣的黑魔法來使用！

```ruby
expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
expect { subject.push(4) }.to change { subject.length }.by(1)
```

## contain_exactly matcher

> [Class: RSpec::Matchers::BuiltIn::ContainExactly](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/ContainExactly)

* 他關注的點是裡面的內容物是不是都在，但他不在意順序！

```ruby
expect([1,2,3]).to contain_exactly(1,3,2)
```

## start\_with & end\_with matcher

* 且主要的用法是在 `String` `Array` 身上！