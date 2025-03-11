# Day 23 介紹 FactoryBot Rails 及設定

|本期版本|上期版本
|:---:|:---:|
`Tue Mar 11 14:40:25 CST 2025` | `Mon Jul 18 14:48:31 CST 2022`


## 安裝 DatabaseCleaner

```ruby
config.before(:suite) do
  DatabaseCleaner.strategy = :transaction
  DatabaseCleaner.clean_with(:truncation)
end
```

* `transaction`: rollback 的方式
* `truncation`: 清除資料庫的所有資料


