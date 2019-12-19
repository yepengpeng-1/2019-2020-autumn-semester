是的，第十三章也在考试范围里面。

## Chapter 13: Garbage Collection

...and let's see.

---

#### 何谓垃圾回收？

留意到，

我们的 Record 跟 Array 是放在 Heap 上的；但我们并不会一直需要使用它们，但我们在 Tiger 语言里无法进行类似 `free()` 或 `delete` 的操作。

因此，我们现在所谓的「垃圾回收」是一个运行时的系统，识别那些不再被使用的变量，并释放那些空间。

对于我们的 Tiger Compilers，存在一个运行时的系统可以保守地、动态地进行垃圾回收。

---

#### Mark and Sweep

标记一扫法。

![image-20191212101124259](GARBAGE%20COLLECTION.assets/image-20191212101124259.png)

这种方法干啥呢？

##### Graph

首先画一个有向图。

每个结点是程序中存在的变量和在堆中存放的 Records。

同时，用边的形式来连接那些存在访问的变量。

##### Mark

从根处（所有程序里的变量作为根，因为他们不可能被回收）开始走，经过所有可能的边，并将经过的所有 Record 都做上标记。

当所有的变量都作此处理之后，结束并进入下一步。

##### Sweep

清除掉整个 Heap，并且将上一步中被 Mark 过的 Record Object 重建起来。

那些未被 Mark 的 Object 就会从 Heap 上消失；但我们还要释放他们的空间。所以我们会将这些 Unmarked 结点放到一个 FreeList 结点链表里，交给 Sweeper 释放空间。

---

#### Cost

![image-20191212102150012](GARBAGE%20COLLECTION.assets/image-20191212102150012.png)

通过 Cost 的分析，我们可以察觉到：

活對象的數目記為 $R$；堆的總大小（活對象和死對象的總體）記為 $H$。

總時間複雜度基本在 $\frac {c_1R + c_2H} {H - R}$。

當 $R$ 非常接近 $H$ 時，也就是大部分堆上的對象都是 Alive 的時候，時間複雜度是很爆炸的。

因此這提醒了我們：沒啥垃圾的時候別亂 GC。

#### M & S: Optimization

##### Explicit Stack

在作者那個年代，調用深度一深就容易 StackOverflow⋯

因此他提供了一個優化方法：自己實現了一個 Stack Frame 的模擬，以免 DFS 過深的時候調用堆棧爆炸。

![image-20191126082156767](GARBAGE%20COLLECTION.assets/image-20191126082156767.png)

現在沒什麼必要了⋯⋯

##### Pointer Reversal

指針反轉法：

![image-20191126082639844](GARBAGE%20COLLECTION.assets/image-20191126082639844.png)

重用堆上的數據結構，確保棧上佔用的空間不爆炸。

多線程的時候，可能就會 Conflict，或者產生一系列的 Race 之類的。

#### GC: Reference Count

另一種垃圾回收算法。

##### Algorithms

使用內存中的另一塊來存放一個表，意在記錄每一個對象被引用的次數，即 Reference Count。

每次一個對象引用了 Object 的指針的時候，就將 RefCount 加 1；釋放的時候，將 RefCount 減 1。

RefCount 減為 0，代表其可以被安全刪除。

##### Glitch: Cycle Referencing

相互引用的物體，是無法被回收的。

循環引用是 RefCount 法最大的問題。

這個問題只能由程序員解決；實現上不允許兩個對象互相引用。

##### \~Break\~

基本上的思路就分為兩種：

要麼用 Mark & Sweep 找出活著的對象，然後掃掉剩餘的；

要麼用 Ref Count 找出死了的對象，單獨把他們殺掉。

有別的方法嗎？

#### Copying Collection

##### Idea

![image-20191126085729115](GARBAGE%20COLLECTION.assets/image-20191126085729115.png)

把堆分成兩部分；一部分是 `from-space`，另一部分是 `to-space`。

我們定期將 Object 在兩塊堆之中進行拷貝；但是，僅僅通過 Traverse 的方式拷貝那些活對象。拷貝完成之後，交換 `from` 和 `to` 的地位。

>   類似 OpenGL 雙緩衝的技術實現。

這樣的成本要低很多；他用的是 Mark & Sweep 的思路，但是無需進行 Sweep。

而且對多線程來說也更友好；不用 Hang 整個程序；拷貝到一半的時候，也就是指針還沒被完全重建的時候也不影響正常讀取。

##### Implementation

![image-20191126090534899](GARBAGE%20COLLECTION.assets/image-20191126090534899.png)

#### Generaional Collection

![image-20191212102535935](GARBAGE%20COLLECTION.assets/image-20191212102535935.png)

这里有技巧：

*   越是新创建的对象，越可能早死。
*   经过了很多次 GC 之后仍然活着的对象，我想他可能会高寿。

所以，我们将堆分成不同的「世代」（Generation）。

留意到 G~i~ 下表越小，代表其越年轻。每过一段时间，代都会衰老，并且下标（代数）增加。

另外，我们不仅仅将 Stack 中的变量作为 Mark & Sweep 的根，连那些更老的 Heap 中变量也作为「不清除」的根。

![image-20191212104532722](GARBAGE%20COLLECTION.assets/image-20191212104532722.png)

实际上，老代变量引用新代的变量是很罕见的。

---

##### 最终的解决方案

![image-20191212105937765](GARBAGE%20COLLECTION.assets/image-20191212105937765.png)

*   开始一次垃圾回收的时候
    *   记忆集合记录着哪些老代的对象可能携带 G~0~ 之中的指针。
*   在经过几次对 G~0~ 的垃圾回收之后
    *   G~1~ 可能已经积累了很多需要回收的垃圾了。
    *   最好连 G~0~ 带 G~1~ 一起做 GC。
*   每一代对象应该指数级地大于前一代。否则就会造成 GC 积累且随着代际推移。
*   当一个 G~i~ 的对象活过了两三轮的 GC 之后，我们就大概可以将其提升到下一代 G~i+1~。