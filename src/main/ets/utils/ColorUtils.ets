/**
 * @file: ColorUtils.ets
 * @author: Yeluzii
 * @date: 2025/10/29
 */
interface ColorItem {
  r: number;
  g: number;
  b: number;
}

// 颜色工具类
export class ColorUtils {
  static hexToRgb(hex: string): ColorItem | null {
    const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ? {
      r: parseInt(result[1], 16),
      g: parseInt(result[2], 16),
      b: parseInt(result[3], 16)
    } : null;
  }

  static rgbToHex(r: number, g: number, b: number): string {
    return '#' + [r, g, b].map(x => {
      const hex = x.toString(16);
      return hex.length === 1 ? '0' + hex : hex;
    }).join('');
  }

  static lighten(color: string, percent: number): string {
    const colorObj = ColorUtils.hexToRgb(color);
    if (!colorObj) {
      return color;
    }

    const amt = Math.round(2.55 * percent);
    const r = Math.min(255, Math.max(0, colorObj.r + amt));
    const g = Math.min(255, Math.max(0, colorObj.g + amt));
    const b = Math.min(255, Math.max(0, colorObj.b + amt));

    return ColorUtils.rgbToHex(r, g, b);
  }

  static darken(color: string, percent: number): string {
    return ColorUtils.lighten(color, -percent);
  }

  static getContrastColor(hexColor: string): string {
    const color = ColorUtils.hexToRgb(hexColor);
    if (!color) {
      return '#000000';
    }

    const brightness = (color.r * 299 + color.g * 587 + color.b * 114) / 1000;
    return brightness > 128 ? '#000000' : '#FFFFFF';
  }
}