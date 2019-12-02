## <center> Vue study record
record the tips of vue during my studying of vue.

### vue command.
*  **v-if**： v-if = "expression": if the expression is true. the element reference this command will be not loaded and randered.
* **v-show**: v-show= "expression": if the expression is true, the element reference this command will be loaded but the css styple will be set no display.
* **v-else** : v-else should fllow v-if or v-else command, or it has no effect.
~~~
<h1 v-if = "dog"> this is a dog <h1>
<h1 v-else> this is not a dog</h1>
~~~
If you use the abve code and dog proeprty is true, then this is a dog will be shown or this is not a dog will be shown.

* **v-for**
~~~
<tr v-for="person in people">
	<td>{{ person.name  }}</td>
	<td>{{ person.age  }}</td>
   	<td>{{ person.sex  }}</td>
</tr>
~~~
the above code block shows how to use **v-for** command of vue. After using this command there will be n rows insert into tr and n is equal to persion count in People list.

* **v-bind** command: v-bind指令可以在其名称后面带一个参数，中间放一个冒号隔开，这个参数通常是HTML元素的特性（attribute），例如：v-bind:class. 
~~~
<li v-for="n in pageCount">
<a href="javascripit:void(0)" v-bind:class="activeNumber === n + 1 ? 'active' : ''">{{ n + 1 }}</a>
</li>
~~~
**v-on**指令用于给监听DOM事件，它的用语法和v-bind是类似的，例如监听<a>元素的点击事件：
~~~
<a v-on:click="doSomething">
~~~
* v-bind 和 v-on的缩写： ： 是v-bind的缩写，@是v-on的缩写。

### Vue 的属性
* el is short element
* data
* methods

### Vue Component
How to use vue component
* Define the component constructor
* Register the constructor into vue
* Create Instance of Vue.

Then users can use the instance and the instance contains the defined component.
