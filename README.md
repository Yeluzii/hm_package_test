# 鸿蒙简便工具包

为鸿蒙应用开发提供常用工具类，简化开发流程，提高开发效率。

## 安装
`ohpm install @yeluzi666/utils`

## 工具类说明

### ArrayStatsUtils - 数组统计工具类
提供数组的基本统计功能：
- `sum(arr: number[]): number` - 计算数组元素总和
- `average(arr: number[]): number` - 计算数组元素平均值
- `max(arr: number[]): number` - 获取数组中的最大值
- `min(arr: number[]): number` - 获取数组中的最小值
- `median(arr: number[]): number` - 计算数组的中位数

### ColorUtils - 颜色工具类
提供颜色格式转换和处理功能：
- `hexToRgb(hex: string): ColorItem | null` - 将十六进制颜色转换为RGB对象
- `rgbToHex(r: number, g: number, b: number): string` - 将RGB值转换为十六进制颜色
- `lighten(color: string, percent: number): string` - 加亮颜色
- `darken(color: string, percent: number): string` - 加暗颜色
- `getContrastColor(hexColor: string): string` - 获取颜色的对比色（黑白）

### DateUtils - 日期工具类
提供日期格式化和处理功能：
- `format(date: Date, pattern: string = 'yyyy-MM-dd'): string` - 格式化日期
- `isToday(date: Date): boolean` - 判断日期是否为今天
- `addDays(date: Date, days: number): Date` - 给日期添加天数
- `diffInDays(date1: Date, date2: Date): number` - 计算两个日期相差天数
- `isLeapYear(year: number): boolean` - 判断是否为闰年

### NumberUtils - 数字工具类
提供数字处理相关功能：
- `isEven(num: number): boolean` - 判断数字是否为偶数
- `isOdd(num: number): boolean` - 判断数字是否为奇数
- `clamp(value: number, min: number, max: number): number` - 限制数字在指定范围内
- `random(min: number, max: number): number` - 生成指定范围内的随机整数
- `format(num: number, decimals: number = 2): string` - 格式化数字保留指定小数位

### QueueUtils - 队列工具类
提供队列数据结构的实现：
- `enqueue(item: T): void` - 入队
- `dequeue(): T | undefined` - 出队
- `front(): T | undefined` - 获取队首元素
- `isEmpty(): boolean` - 判断队列是否为空
- `size(): number` - 获取队列大小
- `clear(): void` - 清空队列

### RandomUtils - 随机工具类
提供各种随机生成功能：
- `randomString(length: number = 10): string` - 生成指定长度的随机字符串
- `randomColor(): string` - 生成随机颜色
- `randomBoolean(): boolean` - 生成随机布尔值
- `randomArrayItem<T>(arr: T[]): T` - 从数组中随机选择一个元素
- `randomInRange(min: number, max: number): number` - 生成指定范围内的随机数

### StackUtils - 栈工具类
提供栈数据结构的实现：
- `push(item: T): void` - 入栈
- `pop(): T | undefined` - 出栈
- `peek(): T | undefined` - 查看栈顶元素
- `isEmpty(): boolean` - 判断栈是否为空
- `size(): number` - 获取栈大小
- `clear(): void` - 清空栈

### StringUtils - 字符串工具类
提供字符串处理功能：
- `isEmpty(str: string): boolean` - 判断字符串是否为空
- `isNotEmpty(str: string): boolean` - 判断字符串是否非空
- `trim(str: string): string` - 去除字符串首尾空格
- `capitalize(str: string): string` - 首字母大写
- `reverse(str: string): string` - 反转字符串

### ValidationUtils - 验证工具类
提供常用验证功能：
- `isEmail(email: string): boolean` - 验证邮箱格式
- `isPhone(phone: string): boolean` - 验证手机号格式
- `isIdCard(idCard: string): boolean` - 验证身份证号格式
- `isStrongPassword(password: string): boolean` - 验证密码强度（至少8位，包含大小写字母、数字、特殊字符）