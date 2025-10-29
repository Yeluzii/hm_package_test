/**
 * @file: ArrayStatsUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
// 数组统计工具类
class ArrayStatsUtils {
  static sum(arr: number[]): number {
    return arr.reduce((a, b) => a + b, 0);
  }

  static average(arr: number[]): number {
    if (arr.length === 0) {
      return 0;
    }
    return ArrayStatsUtils.sum(arr) / arr.length;
  }

  static max(arr: number[]): number {
    if (arr.length === 0) {
      return NaN;
    }
    return Math.max(...arr);
  }

  static min(arr: number[]): number {
    if (arr.length === 0) {
      return NaN;
    }
    return Math.min(...arr);
  }

  static median(arr: number[]): number {
    if (arr.length === 0) {
      return NaN;
    }
    const sorted = [...arr].sort((a, b) => a - b);
    const mid = Math.floor(sorted.length / 2);
    return sorted.length % 2 !== 0 ? sorted[mid] : (sorted[mid - 1] + sorted[mid]) / 2;
  }
}