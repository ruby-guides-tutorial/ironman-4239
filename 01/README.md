# Day 1 介紹測試框架 RSpec

|本期版本|上期版本
|:---:|:---:|
`Fri Oct 13 18:28:53 CST 2023` |


## RSpec 的生態系

* [`rspec-core`](https://github.com/rspec/rspec-core): 核心的函式庫，負責組織和執行測試的部分
* [`rspec-expectations`](https://github.com/rspec/rspec-expectations): 配對語法 ( matcher ) 的函式庫，負責實現我們的例子
* [`rspec-mocks`](https://github.com/rspec/rspec-mocks): 一個用來假裝物件或類別行為的函式庫
* [`rspec-rails`](https://github.com/rspec/rspec-rails) 則是整合了 Ruby on Rails 和 RSpec 而衍生出來的一個 Gem