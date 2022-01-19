### 今天题目：219. 存在重复元素 II  

难度：简单

给你一个整数数组 nums 和一个整数 k ，
判断数组中是否存在两个 不同的索引 i 和 j ，满足 nums[i] == nums[j] 且 abs(i - j) <= k 。
如果存在，返回 true ；否则，返回 false 。


示例 1：

输入：nums = [1,2,3,1], k = 3
输出：true

示例 2：

输入：nums = [1,0,1,1], k = 1
输出：true

示例 3：

输入：nums = [1,2,3,1,2,3], k = 2
输出：false
 

提示：

1 <= nums.length <= 105
-109 <= nums[i] <= 109
0 <= k <= 105



### 我的思路
1. 要判断两个不同索引对应的值是否相等，我们需要拿出两个值进行比较
2. 因此我们使用两个for循环，第一个for循环依次拿出一个元素，在利用第二个for循环依次拿出后面的所有元素进行依次比较
3. 比较的结果，如果同时满足条件nums[i] == nums[j] 且 abs(i - j) <= k，则返回true，否则返回false
4. 需要注意false需要在最后的位置返回，因为只要所有比对都不行是才返回false

### 代码实现

```javascript
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {boolean}
 */
var containsNearbyDuplicate = function (nums, k) {
    for (var i = 0; i < nums.length - 1; i++) {
        for (var j = i + 1; j < nums.length; j++) {
            if ((nums[i] == nums[j]) && (Math.abs(i - j) <= k)) {
                return true
            }
        }
    }
    return false
};
```
