# Day 13 懶得想變數嗎？ RSpec 有提供你啦

|本期版本|上期版本
|:---:|:---:|
`Mon Mar 10 23:38:47 CST 2025` | `Fri Oct 13 22:49:29 CST 2023`

## Subject

* **如果你的最上層 RSpec.describe 後方接的是類別，那 subject 就會依照這個類別的預設值去做 new 的動作**
* 加上他和 let 一樣，在每一個 example 中都是獨立的，不會有污染物件的情形，可以放心的服用！

## 加入初始值的 Subject

```ruby
subject do 
  {a: 3, b: 4}
end
```

但如果我們不想要叫做 subject 呢？

```ruby
subject(:robert) do
  {a: 3, b: 4}    
end 
```

## Described_class

```ruby
subject { described_class.new("Beef", "Cheedar") }

let(:pork_burger) { described_class.new("Pork", "Cheedar") }
```

## 我只要寫一行！

> 前面有提到使用 subject 的小小好處，就是可以讓你只要寫一行！

```ruby
expect(subject).to eq(5)
it { is_expected.to eq(5) }
```
