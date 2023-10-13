# Day 10 實用的 let 方法以及客製化錯誤訊息！

|本期版本|上期版本
|:---:|:---:|
`Fri Oct 13 20:44:12 CST 2023` |

## 改變數值的時候

* 原因就出在於，我們呼叫的是一個方法，每呼叫一次都是一個新的物件誕生，他並不會存活在 block 裡面

## let helper method

```ruby
let(:burger) { Burger.new('Beef', 'Cheddar') }
```

* 根據剛剛提到過的 Memorization，**在同一個 example 中，他都會是同一個物件，也不會再次的呼叫 let 方法！**
* 還記得 before hooks 其實和這個很像，但他是在每一個 example 前都會先執行，也就是說即使你的 example 內沒有使用到，他也會執行！
* **但 let 有個很厲害的功能 Lazy-loading，也就是說當我們呼叫這個變數的時候，他才去執行這段程式碼。**
* 至於 let! method，加了一個驚嘆號就代表說他會在所有的 example 前執行，就像 before hooks 一樣

## 客製化你的錯誤訊息

* 還記得我們有提過 to 是一個方法，而他除了一定要接受 expection 之外，也可以增加一些額外的選項，例如：客製化錯誤。
