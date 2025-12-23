---
title: "LeetCode 1. Two Sum"
date: 2025-12-24T00:00:00+08:00
draft: false
tags: ["Array", "Hash Table", "Easy"]
categories: ["LeetCode"]
author: "Your Name"
description: "使用 Hash Map 解決 Two Sum 問題"
---

## 題目描述

給定一個整數陣列 `nums` 和一個目標值 `target`，請找出陣列中和為目標值的兩個數字的索引。

你可以假設每個輸入只會有一個解，且不能使用相同的元素兩次。

**範例：**
```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: nums[0] + nums[1] = 2 + 7 = 9
```

## 解題思路

### 方法一：暴力解法 (Brute Force)

最直觀的方法是使用兩層迴圈，檢查所有可能的組合。

**時間複雜度：** O(n²)
**空間複雜度：** O(1)

### 方法二：Hash Map (推薦)

使用 Hash Map 來儲存已經遍歷過的數字及其索引，這樣可以在 O(1) 的時間內查找配對的數字。

**核心思路：**
1. 遍歷陣列，對每個數字計算 `complement = target - nums[i]`
2. 檢查 `complement` 是否已在 Hash Map 中
3. 如果存在，返回兩個索引
4. 如果不存在，將當前數字和索引存入 Hash Map

**時間複雜度：** O(n)
**空間複雜度：** O(n)

## 程式碼實作

### Python

```python
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # 建立 hash map 來儲存數字和索引的對應
        num_map = {}

        for i, num in enumerate(nums):
            complement = target - num

            # 檢查 complement 是否已在 map 中
            if complement in num_map:
                return [num_map[complement], i]

            # 將當前數字和索引存入 map
            num_map[num] = i

        return []
```

### JavaScript

```javascript
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const map = new Map();

    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];

        if (map.has(complement)) {
            return [map.get(complement), i];
        }

        map.set(nums[i], i);
    }

    return [];
};
```

### Java

```java
class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];

            if (map.containsKey(complement)) {
                return new int[] { map.get(complement), i };
            }

            map.put(nums[i], i);
        }

        return new int[] {};
    }
}
```

## 重點整理

1. **Hash Map 是關鍵**：能將查找時間從 O(n) 降到 O(1)
2. **一次遍歷即可**：不需要將所有元素先放入 map，邊遍歷邊檢查即可
3. **注意索引順序**：返回時要注意先找到的索引在前

## 相關題目

- [LeetCode 15. 3Sum](https://leetcode.com/problems/3sum/)
- [LeetCode 18. 4Sum](https://leetcode.com/problems/4sum/)
- [LeetCode 167. Two Sum II - Input Array Is Sorted](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

## 參考連結

- [LeetCode 原題](https://leetcode.com/problems/two-sum/)
