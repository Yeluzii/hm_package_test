/**
 * @file: NumberUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
// 数字工具类
class NumberUtils {
  static isEven(num: number): boolean {
    return num % 2 === 0;
  }

  static isOdd(num: number): boolean {
    return num % 2 !== 0;
  }

  static clamp(value: number, min: number, max: number): number {
    return Math.min(Math.max(value, min), max);
  }

  static random(min: number, max: number): number {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

  static format(num: number, decimals: number = 2): string {
    return num.toFixed(decimals);
  }
}