import 'card_box_model.dart';
import 'hover_box_model.dart';

class GroupBoxModel {
  final CardBoxModel primaryColor;
  final CardBoxModel secondaryColor;
  final CardBoxModel tertiaryColor;
  final HoverBoxModel hoverColor;

  const GroupBoxModel(
      {required this.primaryColor,
      required this.secondaryColor,
      required this.hoverColor,
      required this.tertiaryColor});
}
