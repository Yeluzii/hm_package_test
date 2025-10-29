/**
 * @file: StringUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
// 字符串工具类
class StringUtils {
  static isEmpty(str: string): boolean {
    return str === null || str === undefined || str.trim() === '';
  }

  static isNotEmpty(str: string): boolean {
    return !StringUtils.isEmpty(str);
  }

  static trim(str: string): string {
    return str ? str.trim() : '';
  }

  static capitalize(str: string): string {
    if (!str) {
      return '';
    }
    return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
  }

  static reverse(str: string): string {
    return str ? str.split('').reverse().join('') : '';
  }
}