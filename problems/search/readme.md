# 搜索

## 深度优先搜索Demo
```python:
def dfs(nide):
    if node in visited:
        # already visited
        return
        
    visited.add(node)
    
    # process current node
    # logic here
    dfs(node.left)
    dfs(node.right)
```

## 广度优先搜索Demo
常用于「层序遍历」、「最短路径」
```Java
void bfs(TreeNode root) {
    Queue<TreeNode> queue = new ArrayDeque<>();
    queue.add(root);
    while (!queue.isEmpty()) {
        TreeNode node = queue.poll(); // Java 的 pop 写作 poll()
        if (node.left != null) {
            queue.add(node.left);
        }
        if (node.right != null) {
            queue.add(node.right);
        }
    }
}
```