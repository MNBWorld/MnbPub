class OptionModel {
  static final options = [
    Option(
      1,
      'Home Screen Customisation',
      'Customise your home screen, with various filters, blur effect, etc',
      'assets/images/drk_op1.png',
      'assets/images/lgt_op1.png',
    ),
    Option(
      2,
      'Lock Screen Customisation',
      'Customise your lock screen, with various filters, widgets, fonts, etc',
      'assets/images/drk_op2.png',
      'assets/images/lgt_op2.png',
    ),
    Option(
      3,
      'Always On Display',
      'Unlock always on display on your phone. Customise according to your want.',
      'assets/images/drk_op3.png',
      'assets/images/lgt_op3.png',
    ),
    Option(
      4,
      'Icon Customisation',
      'Have the ability to customise the looks of the icons you tap!',
      'assets/images/drk_op4.png',
      'assets/images/lgt_op4.png',
    ),
  ];
}

class Option {
  final int id;
  final String name;
  final String desc;
  final String drkimg;
  final String lgtimg;
  // final Color drk;
  // final Color lgt;

  Option(
    this.id,
    this.name,
    this.desc,
    this.drkimg,
    this.lgtimg,
    // this.drk,
    // this.lgt,
  );
}
