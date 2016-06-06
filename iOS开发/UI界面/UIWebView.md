# UIWebView 
## 属性
### 是否能加载、前进、后退
```swift
public var canGoBack: Bool { get }

public var canGoForward: Bool { get }

public var loading: Bool { get }
```

### 页面内容是否自适应
```swift
public var scalesPageToFit: Bool
```
- 网页内容会缩小到整个设备屏幕

### 数据检测类型
```swift
public var dataDetectorTypes: UIDataDetectorTypes
```
- 检测各种特殊的字符串，会给网址、电话号码加个下划线，点击会弹出提示框

## 方法
### 刷新
```swift
public func reload()
```

### 停止加载
```swift
public func stopLoading()
```

### 返回
```swift
public func goBack()
```

### 前进
```swift
public func goForward()
```

### 加载HTML
```swift
public func loadHTMLString(string: String, baseURL: NSURL?)
```
举个例子：

```swift
webView.loadHTMLString("<html><body>hello world</body></html>" , baseURL: nil)
```
## 代理
### 开始加载时调用
```swift
optional public func webViewDidStartLoad(webView: UIWebView)
```

### 完成加载时调用
```swift
optional public func webViewDidFinishLoad(webView: UIWebView)
```

### 加载失败调用

```swift
optional public func webView(webView: UIWebView, didFailLoadWithError error: NSError?)
```

### 每单webView即将发送一个请求之前，都会调用这个方法
```swift
optional public func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
```
- 返回true：运行加载这个请求；返回false：禁止加载这个请求
- 这个代理方法可以做一些拦截操作
- 这个方法对js进行操作