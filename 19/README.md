# Day 19 魁儡的 double object

|本期版本|上期版本
|:---:|:---:|
`Mon Jul 18 17:56:22 CST 2022` | `Tue Jul 12 21:42:24 CST 2022`


## Double method

* double 可以讓我們預期的方法和回傳的值，變成key-value 的組合，然後存放在這個 double 物件中。

```ruby
basketball_player = double("Lebron James", dunk: "Ah!!!!", shoot: "Goal!!!!")
allow(basketball_player).to receive(:dunk).and_return("Ah!!!!")
allow(basketball_player).to receive_messages(dunk: "Ah!!!!", shoot: "Goal!!!!")
```


然後我們在測試中期待這個物件會接收到這些方法～

```ruby
expect(cow_boy).to receive(:fighting?)
```

而如果想要指定接收次數的話，也可以加入計數的方法喔！

```ruby
receive(:be_shot).twice
receive(:be_shot).exactly(1).times
receive(:be_shot).at_most(1).times
```


## Ref

* <https://github.com/rspec/rspec-mocks>
* [RSpec Mocks测试介绍 - 掘金](https://juejin.cn/post/7129496755816628231)
* <https://ihower.tw/rails/files/ihower-rspec-mock.pdf>