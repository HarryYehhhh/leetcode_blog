---
title: "LeetCode Leetcode 937 K Closest Points to Origin"
date: 2025-12-26T17:59:21+08:00
draft: false
tags: ["Heap", "Medium"]
categories: ["LeetCode"]
author: "Harry Yeh"
description: "簡短描述這題的解法"
---

## 題目描述

<!-- 貼上題目描述 -->
Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).
**範例：**
```
Input: points = [[1,3],[-2,2]], k = 1
Output: [[-2,2]]
Explanation:
The distance between (1, 3) and the origin is sqrt(10).
The distance between (-2, 2) and the origin is sqrt(8).
Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].
```

## 解題思路

計算在x跟y軸上的點距離原點(0,0)最近的k個點，類似畢氏定理兩邊平方相加等於最長邊平方
不做開根號是因根號開完會有小數點，會導致距離相近的兩點判斷會有誤差

### 方法：標題

<!-- 說明你的解題思路 -->

**時間複雜度：** Arrays.sort O(n log n) + for loop O(k) 因 k < n 結果為 O(n log n)
**空間複雜度：** O(n)

## 程式碼實作

### Java

```java
class Solution {
    public static int distance(int[] dis) {
        return dis[0] * dis[0] + dis[1] * dis[1];
    }
    public int[][] kClosest(int[][] points, int k) {
        Arrays.sort(points, (a, b) -> distance(a) - distance(b));
        int[][] ans = new int[k][2];

        for(int i = 0; i < k; i++) {
            ans[i] = points[i];
        }
        return ans;
    }
}
```

## TEST CASE