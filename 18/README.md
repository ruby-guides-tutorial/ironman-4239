# Day 18 Matcher 介紹 (下)

|本期版本|上期版本
|:---:|:---:|
`Tue Mar 11 13:44:47 CST 2025` | `Fri Oct 13 23:26:07 CST 2023`


## satisfy matcher

> [Class: RSpec::Matchers::BuiltIn::Satisfy](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/Satisfy)

* 他就是一個只要能夠在 block 裡面滿足條件，就可以通過測試的一個好東西！

## compound expection

> [Class: RSpec::Matchers::BuiltIn::Compound](https://rubydoc.info/gems/rspec-expectations/RSpec/Matchers/BuiltIn/Compound)

* 簡單來說就是合成你的 RSpec 語法，要 and && 或是 or || 對比上你的複數 Matcher 才能夠通過～
