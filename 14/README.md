# Day 14 分享你的 Example！

|本期版本|上期版本
|:---:|:---:|
`Tue Mar 11 11:53:19 CST 2025` | `Fri Oct 13 22:51:23 CST 2023`

## Shared_examples

```ruby
RSpec.shared_examples "Object with three elements" do
end

include_exmaples "Object with three elements"
```

## Shared_context

```ruby
RSpec.shared_context "common_burger" do
end

include_context "common_burger"
```

> 有沒有超方便的，但如果你要放在不同的檔案裡面，記得要 require 來做使用喔！