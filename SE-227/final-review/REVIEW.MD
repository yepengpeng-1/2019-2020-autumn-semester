# SE-227

那么我们开始复习 CSE 下半学期的内容吧。

需要复习的内容主要是 Lecture 14～28。实际上最後两 Lecture 主要用于复习，所以我们还是从现在开始瞧一瞧。

## Lecture 14: AoN & BoA

赌博有个常用术语：Double or Nothing。意思是参加一场赌局，有可能获得 100% 收益，即拿到 100% 赌资的回报，要么全部输光全部赌资。

本节的主要内容也就是 All or Nothing & Before or After。

下面我们详细讲讲。

### The CAP Theory

所谓卡普理论……是什么意思？

也是一个类似不可能三角的理论：无法同时保证「一致性」、「可用性」，「区域性网络故障容忍性」三项；最多只能保证其中两项。

>   • 2010 年由 UC Berkeley 的 Eric Brewer 教授首次提出
>
>   • 2012 年由 MIT 的 Seth Gilbert 和 Nancy lynch 证明

更形式化一点说，对分布式计算机系统来说，同时满足以下三点是不可能的：

*   Consistency、Availability、Partition Tolerance 不可得兼。

这个就是简称 CAP Theorem。

#### Consistency

何谓一致性？令所有节点在同样的时间看见同样的数据。即使在数据有多处备份的情况下依然要保证。

#### Availability

定义为系统对用户请求均有响应，要能在一定时间内回复处理成功或失败。不能在「不确定」状态上停留太久。

#### Partition Tolerance

这个可能比较抽象：在任意消息丢失或一部分的系统故障情况下，系统依然可继续运行。

>   事实上这里没有一个很绝对的故障率标线，而且不存在绝对的 PT；只有某种程度上的 Robust。

### Best Practice

#### CA, not P

我们放弃 Partition Tolerance，而尽力保证 Consistency 和 Availability：这是不可能的。在复杂而糟糕的现实世界中，Partition Tolerance 是不可避免的；消息丢失和系统故障永远出现。因此放弃 P 绝对是糟糕的主意。

#### AP, not C

我们放弃 Consistency（一致性），着力保证 Availability（可用性）。

我们的目的是保证用户体验，用户总能操作成功（或者说总能得到操作结果），即使数据可能不一致。

#### CP, not A

我们放弃 Availability（可用性），但是着力保证 Consistency（一致性）。

我们的目的是必须保证一致性，在此基础上没有办法地放弃 Availability；如当发生区域性断网时，拒绝新的用户请求直到网络恢复。类似于这次支付宝的 2 小时瘫痪，就是在 Partition 的情况下，为了保证 Consistency，无奈放弃 Availability 的结果。

#### Examples

选择 AP 还是 CP？取决于我们的目标要求。

类似于点外卖、在线购物这种无关紧要的内容，我们自然可以先暂时放弃 Consistency，到最后再去善后；

然而对于支付宝这种跟金融有关的重要事务，不能保证一致性的后果是非常严重的；所以不得不选择 CP。

#### Partially Choice

有时候，并非一定要从 AP 和 CP 中二选一；我们存在一个折衷方案可选。

例如，有两个区域欧洲和北美，网络断开后北美可以用，只有欧洲不可用；当网络恢复后，将北美的数据同步回欧洲，即北美为主，欧洲从属……之类的。

### Transaction

Transaction，事务。

#### Facing Difficulties

我们目前的世界总是离理想太远。

我们所有的目标都是在一堆不可靠的结点上构造出一个可靠的系统。

极其困难的事情。

#### What is Transaction?

![image-20191222123535225](REVIEW.assets/image-20191222123535225.png)

每一个「事务」都抽象为这么一个模型：BEGIN、BODY、END。

BODY 跟 END 都是套话——BODY 里面也就是每一个 Transaction 要干的内容。

然而，关键在于 T1 跟 T2 之间存在一个严格的保证：

*   All-or-nothing
    *   每个 Transaction 中的 Body 指令，要么不执行，要么全部执行。不可以存在执行一半的情况。

*   Before-or-after
    *   T1、T2 必须（表面上）按顺序执行；即使是在多线程情况下也是如此。

这两项保证就足够实现我们的抽象了。