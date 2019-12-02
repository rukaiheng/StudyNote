## Record the js syntax ##
1. "Use Strict": 这个关键字能够让利用没有声明变量的情况失效。
2. "this": this 在标签中事件中使用，指的是接收事件的HTML元素。
3. js 的call方法:
	js 方法能够调用call方法并且传入任何js对象，在原来的方法中可以使用this调用传入对象中的方法或者属性。
   js 的apply方法：
	js 的apply方法和call方法非常相似，不同的地方是call方法可以接受多个参数，apply方法只能接受数组。
如果call和allpy方法没有不需要传入对象，不需要利用对象中的方法或者属性，传入null就可以了。也可以传入“ ”或者0.
javascript 在严格模式下，如果apply方法的第一个参数不是对象，则它将成为被调用函数的所有者（对象）。在非严格模式下，他成为全局对象。

javascript 的闭包： 全局变量能够通过闭包实现局部（私有）。
闭包的作用是第一次执行的时候，执行原来函数。然后函数被替换为函数中嵌套的函数。从而实现闭包。
DOM: document object model. 文档对象模型。HTML DOM模型被结构化为对象树。
W3C: world wide web consortium. W3C 文档对象模型是中立与平台和语言的接口，他允许程序和脚本动态的访问，更新文档的内容，结构和样式。
W3C DOM标准被分为3个不同的部分：
	Core DOM: 所有文档类型的标准模型。
	XML DOM： XML文档的标准模型。
	HTML DOM：HTML文档的标准模型。
HTML DOM： 是HTML的标准对象模型和编程接口。 它定义了： 
* 作为对象的HTML元素。
* 素有HTML元素的属性。
* 访问所有HTML元素的方法。
* 所有HTML元素的事件。
DOM元素： 
* 通过CSS选择器查找HTML元素。 querySelectorAll() 方法， 这个方法允许用户查找所有匹配的选择器（ID，类名，属性，类型，属性值等等）。

id和class的标识： #标识id。 .标识class。
Insertbefore: 后面跟两个参数，第一个参数是需要添加的节点，第二个参数定义了需要添加的节点在哪个节点之前。
**我们可以通过对HTML Collection进行遍历让后对其中的元素进行样式的设定和编辑。**
**我们不可以对HTML Collection按照数组的方法进行操作。比如push pop valueof and joint 进行操作。**

BOM: Browser Object Model 浏览器对象模型，允许JavaScript与浏览器对话。
windows对象：所有的浏览器都支持windows对象。他代表浏览器的窗口。
windows.location 对象可用于获取当前页面地址（URL）并且把浏览器重定向到新的页面。 assign可以用于重定向，location中很多属性和方法跟网络相关。
windows.history：这个windows对象能够浏览历史。有forward方法和back方法。
**window.navigator: 这个对象包含有关访问者的信息。**
**window.alert ,window.conform, window.prompt:**
alert: 仅仅进行弹窗，只有ok一个按钮。
conform： 有ok和cancel两个按钮。
prompt：弹出的窗口中有一个输入控件加上ok和cancel按钮。
cookie: Cookie 是在您的计算机上存储在小的文本文件中的数据。当web服务器发送网页后，连接被关闭，服务器会忘记用户的一切。Cookie是为了解决如何记住用户信息而发明的。
* 当用户访问网页时，他的名字可以存储在cookie中。
* 下次用户访问该页面时，cookie会“记住“他的名字。
* Cookie中比较重要的值为sessionID

**Timming Event:** JS可以在时间间隔内执行。
* SetTimeOut（function， milliseconds）
* SetInterval（function， milliseconds）
SetTimeOut： 第一个参数为需要执行的函数，第二个参数为执行前停留的时间。
clearTimeOut: 方法用来停止执行SetTimeOut中规定的函数。可以用来停止，SetTimeOut事件。
SetInterval： 这个函数可以用来规定指定的函数的执行时间间隔。

### AJAX 简介 Asynchronous JavaScript And XML.
Ajax 可以做的事情如下：
* 不刷新页面更新网页
* 在网页加载后从服务器请求数据
* 在页面加载后从服务器接收数据
* 在后台向服务器发送数据
AJAX: 是一个在程序中通过JS动态访问WEB服务，并返回需要内容的服务。JS拿到返回数据之后，就可以改变需要改变的局部内容，而不需要对整个网页进行刷新。
```
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  
  xhttp.open("GET", "/example/js/ajax_info.txt", true);
  xhttp.send();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
}
```

上面的程序能够实现动态获取数据并且局部更新页面。
**AJAX的核心是XMLHttpRequest对象**
```
var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
    } else {
    // code for IE6, IE5
     xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
```
#### 跨域访问
出于安全原因，现代浏览器不允许跨域访问。
这意味着尝试加载的网页和 XML 文件都必须位于相同服务器上。
W3School 上的实例都会打开位于 W3School 域上的 XML 文件。
如果您希望在自己的页面上使用以上实例，那么您所加载的 XML 文件必须位于您自己的服务器上。

#### jQuery vs JavaScript
jQuery 由 John Resig 于 2006 年创建。它旨在处理浏览器不兼容性并简化 HTML DOM 操作、事件处理、动画和 Ajax。
十多年来，jQuery 一直是世界上最受欢迎的 JavaScript 库。
但是，在 JavaScript Version 5（2009）之后，大多数 jQuery 实用程序都可以通过几行标准 JavaScript 来解决：

JQuery and Javascript: 
```
var myElement = $("#id2");
var myElement = document.getElementById("id01");
==================================================
var myElements = $("p");
var myElements = document.getElementsByTagName("p");
====================================================
var myElements = $(".intro");
var myElements = document.getElementsByClassName("intro");
=========================================================
var myElements = $("p.intro");
var myElements = document.querySelectorAll("p.intro");
=========================================================
myElement.text("Hello China!");
myElement.textContent = "Hello China!";
=========================================================
textContent 返回的是给定标签文本。 InnerHTML返回的是HTML文本。
=========================================================
var myElement.html("<p>Hello World</p>");
var myElement.innerHTML = "<p>Hello World</p>";
=========================================================
var content = myElement.html();
var content = myElement.innerHTML;	
=========================================================
Jquery and JS 在操作CSS上的不同：
myElement.hide();
myElement.style.display = "none";
=========================================================
myElement.show();
myElement.style.display = "";
=========================================================
myElement.css("font-size","35px");
myElement.style.fontSize = "35px";
=========================================================
$("#id").remove();
element.parentNode.removeChild(element);
=========================================================
JQuery 和JS 在操作DOM上的不同：
var myParent = myElement.parent();
var myParent = myElement.parentNode;
```
