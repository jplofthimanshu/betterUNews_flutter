enum FontFamily {
  LatoThin,
  LatoLight,
  LatoRegular,
  LatoMedium,
  LatoSemibold,
  LatoBold,
  LatoHeavy,
  LatoBlack
}

extension FontFamilyX on FontFamily {
  String get value {
    switch (this) {
      case FontFamily.LatoThin:
        return 'LatoThin';
      case FontFamily.LatoLight:
        return 'LatoLight';
      case FontFamily.LatoRegular:
        return 'LatoRegular';
      case FontFamily.LatoMedium:
        return 'LatoMedium';
      case FontFamily.LatoSemibold:
        return 'LatoSemibold';
      case FontFamily.LatoBold:
        return 'LatoBold';
      case FontFamily.LatoHeavy:
        return 'LatoHeavy';
      case FontFamily.LatoBlack:
        return 'LatoBlack';
    }
  }
}

