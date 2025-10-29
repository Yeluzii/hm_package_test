/**
 * @file: ValidationUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
// 验证工具类
export class ValidationUtils {
  static isEmail(email: string): boolean {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
  }

  static isPhone(phone: string): boolean {
    const regex = /^1[3-9]\d{9}$/;
    return regex.test(phone);
  }

  static isIdCard(idCard: string): boolean {
    const regex = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    return regex.test(idCard);
  }

  static isStrongPassword(password: string): boolean {
    // 至少8位，包含大小写字母、数字、特殊字符
    const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return regex.test(password);
  }
}