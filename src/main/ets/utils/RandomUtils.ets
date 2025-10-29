/**
 * @file: RandomUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
// 随机工具类
export class RandomUtils {
  static randomString(length: number = 10): string {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let result = '';
    for (let i = 0; i < length; i++) {
      result += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return result;
  }

  static randomColor(): string {
    return '#' + Math.floor(Math.random() * 16777215).toString(16).padStart(6, '0');
  }

  static randomBoolean(): boolean {
    return Math.random() >= 0.5;
  }

  static randomArrayItem<T>(arr: T[]): T {
    return arr[Math.floor(Math.random() * arr.length)];
  }

  static randomInRange(min: number, max: number): number {
    return Math.random() * (max - min) + min;
  }
}