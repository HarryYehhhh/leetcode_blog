---
title: "LeetCode Leetcode 57 Insert Interval"
date: 2025-12-26T00:34:32+08:00
draft: false
tags: ["標籤1", "標籤2", "難度"]
categories: ["LeetCode"]
author: "Harry Yeh"
description: "簡短描述這題的解法"
---

## 題目描述

<!-- 貼上題目描述 -->
You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

Return intervals after the insertion.

Note that you don't need to modify intervals in-place. You can make a new array and return it.

**範例：**
```
Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10]
```

## 解題思路

要確定newInterval頭跟尾會落在哪個陣列區間，有三種情況
1. 整段都在陣列內
2. 頭在子陣列內
3. 尾在子陣列內

在合併時只要聚焦在如何在所有符合條件的子陣列內，取頭的最小值跟尾的最大值

### 方法：標題

while loop掃過去針對特定子陣列做處理

**時間複雜度：** O(n)
**空間複雜度：** O(n)

## 程式碼實作

### Java

```java
class Solution {
    public int[][] insert(int[][] intervals, int[] newInterval) {
        int len = intervals.length;
        int i = 0;
        ArrayList<int[]> res = new ArrayList<>();

        while (i < len && newInterval[0] > intervals[i][1]) {
            res.add(intervals[i]);
            i++;
        }

        while (i < len && newInterval[1] >= intervals[i][0]) {
            newInterval[0] = Math.min(newInterval[0], intervals[i][0]);
            newInterval[1] = Math.max(newInterval[1], intervals[i][1]);
            i++;
        }
        res.add(newInterval);

        while (i < len) {
            res.add(intervals[i]);
            i++;
        }
        return res.toArray(new int[res.size()][]);
    }
}
```

## TEST CASE

1. intervals = [[1,3],[6,9]], newInterval = [2,5]
```
newInterval[0] = 2 > intervals[0][0] = 1
頭取小為1
newInterval[1] = 5 > intervals[0][1] = 3
尾取大為10
合併結果為[1,5]

res = [[1,5],[6,9]]

```
2. intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
```
skip...

newInterval[0] = 4 > intervals[1][0] = 3
頭取小為3
newInterval[1] = 8 < intervals[3][1] = 10
尾取大為10
合併結果為[3, 10]

res = [[1,2],[3, 10],[12,16]]

```