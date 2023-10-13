# Day 4 初始化的 RSpec 資料夾剖析

|本期版本|上期版本
|:---:|:---:|
`Fri Oct 13 18:39:14 CST 2023` | 

## 利用 Command line 來創建你的 RSpec 資料夾

## spec_helper.rb

> 這個檔案的是整個 RSpec 的設定檔

加了 f 前綴的會被留下並測試，沒有加上 f 的會被過濾掉

```ruby
config.filter_run_when_matching :focus
```

## Out Put 的效果

```bash
rspec spec/test_spec.rb --format doc
```

```ruby
config.default_formatter = "doc"
```

## Ref

* [Class: RSpec::Core::Configuration](https://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration)
* [Class: RSpec::Expectations::Configuration](https://rubydoc.info/gems/rspec-expectations/RSpec/Expectations/Configuration)
* [Class: RSpec::Mocks::Configuration](https://rubydoc.info/gems/rspec-mocks/RSpec/Mocks/Configuration)