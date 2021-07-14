package search

import "math"

// 按字典wordList 完成从单词 beginWord 到单词 endWord 转化，一个表示此过程的 转换序列 是形式上像 beginWord -> s1 -> s2 -> ... -> sk 这样的单词序列，并满足：
//
//每对相邻的单词之间仅有单个字母不同。
//转换过程中的每个单词 si（1 <= i <= k）必须是字典wordList 中的单词。注意，beginWord 不必是字典 wordList 中的单词。
//sk == endWord
//给你两个单词 beginWord 和 endWord ，以及一个字典 wordList 。请你找出并返回所有从 beginWord 到 endWord 的 最短转换序列 ，如果不存在这样的转换序列，返回一个空列表。每个序列都应该以单词列表 [beginWord, s1, s2, ..., sk] 的形式返回。
// https://leetcode-cn.com/problems/word-ladder-ii/
func findLadders(beginWord string, endWord string, wordList []string) [][]string {
	n := len(wordList)             // n就是wordList里面单词的个数
	ids := map[string]int{}        // ids就是建立从给定word到它所在wordList slice中的索引的map映射
	for i, s := range wordList {   // 来吧，把ids给建立一起来吧，此处用了O(n)的迭代
		ids[s] = i
	}
	ret := [][]string{}            // 无论结果如何，结果得在此处声明
	if _, ok := ids[endWord]; !ok {  // 要是wordList里面压根就没有endWord，那还搜索个啥劲，直接不高兴退出！
		return ret
	}
	if _, ok := ids[beginWord]; !ok {  // 答对了，就是看看beginWord在不在wordList里面，不在就给加上
		wordList = append(wordList, beginWord)
		ids[beginWord] = n
		n++                            // 加上了，那更新一下wordList长度吧老铁
	}

	cost := make([]int, n)             // 生成一个cost slice，标识从beginWord通过蛋疼的只能改一个字母的变化，
	// 变到这个单词的时候最少的变化次数
	edge := make([][]int, n)           // 哎呀重点来了，edge是一个[][]int slice，长度是n，里面每一个member，
	// 都是一个[]int slice，表示当前wordList所在位置的word，经过一次蛋疼变换
	// 都能变换到哪些位置的word上去，说白了整完这个edge，从一个指定word出发，不就
	// 能建立这个word的下一层的所有节点么
	for i := range edge {              // 开始迭代wordList里面的每一个word，每次选一个word出来
		for j := i + 1; j < n; j++ {   // 然后从这个word的下一个word开始迭代，再选一个word出来
			for b := 0; b < len(beginWord); b++ {   // 对这两个word按照每个字节进行对比
				if wordList[i][b] != wordList[j][b] {   // 假设这两个word在某一个字节处，不一样了
					if wordList[i][b+1:] == wordList[j][b+1:] { // 但是剩下部分却一样，这说明啥？这说明这两个word只有这个字节不一样啊
						edge[i] = append(edge[i], j)    // 那还犹豫啥，直接把这两个word对应位置的edge slice加上彼此
						edge[j] = append(edge[j], i)    // 这样给定这两个word的任何一个word，不就知道蛋疼变换能变成啥了么
					}
					break                               // 无论剩下部分一不一样，这两个词就比对完了，break掉这个循环
				}
			}
		}
		cost[i] = math.MaxInt64         // 咋的都是迭代，不如顺手把cost也都给初始化了，假设从beginWord到所有word，步骤都是很长很长
	}
	cost[ids[beginWord]] = 0            // beginWord到beginWord，最短长度肯定是0嘛

	q := [][]int{{ids[beginWord]}}      // BFS标准套路已经厌烦了，就是把beginWord放到queue里面然后开始
	// 但是此时此刻问题来了，到底咋样才能知道搜索到一个endWord的时候，这个搜索的path路径都
	// 包含了啥单词？ 所以其实这里顺手把能代表path的一个[]int slice扔进queue里面，作为
	// queue的基本类型，然后每次往queue里面加新成员的时候，把新成员append到path里面，不是
	// 挺香的一个小技巧么？
	for i := 0; i < len(q); i++ {       // 废话不多说，虽然已经说了很多，立刻开始BFS标准套路之迭代循环到queue里面已经没啥可迭代为止
		cur := q[i]                     // BFS标准套路之从queue里面取当前node出来
		curLast := cur[len(cur)-1]	    // 看看当前node代表的path的最后一个访问到的word是啥
		if wordList[curLast] == endWord {   // 唉呀妈呀，这个word要是endWord，
			p := []string{}                 // 那就赶紧把这个path转换成[]string，然后放到返回值里面吧
			for _, id := range cur {
				p = append(p, wordList[id])
			}
			ret = append(ret, p)
			continue                        // 那必须是continue这个循环啊，不需要再往下进行下一层的搜索了
		}
		for _, to := range edge[curLast] {  // 行吧，这个word不是endWord，那让我们把跟这个word能通过蛋疼变换
			// 勾搭到一起的word都给找出来，然后append进path，然后放到queue里面
			if cost[curLast]+1 <= cost[to] {  // 本篇最喵喵喵的部分来了：啥样的word能被放进下一层的queue？
				// 比如这个word和已经在path里面（BFS搜索过的）word重复了，那说明啥？
				// 说明这个word的cost在很久之前就已经被set过了，但是如果当前搜索路径
				// 能让这个cost变小，那不是很香么，那就把更新这个word的cost呀
				// 当然要是这个word压根还没人摸过，那就是第一次搜索到这个word，那也顺手
				// 把这个word的cost给设置了。
				// 总之，要是从当前path的last word（听着瘆得慌，毕竟last word这么命名有
				// 歧义）走到新的word，cost值超过了之前搜索的路径，那就没必要再谈了
				// 因为这一定会导致未来就算搜索到endWord的cost，不是最短。并且也有搜索
				// 成环的死循环风险。
				cost[to] = cost[curLast] + 1
				path := make([]int, len(cur)+1)  // 好了废话太多了，复制path吧，最后一位加上这个toWord
				copy(path, cur)
				path[len(path)-1] = to
				q = append(q, path)           // 然后BFS标准套路之我要把这个节点捅进queue里面就不管了。
			}
		}
	}
	return ret        // 让我们返回结果
}
