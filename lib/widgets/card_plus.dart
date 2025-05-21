import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final placeholderImage = Image.asset(
  "assets/images/empty_states/placeholder.png",
  width: double.infinity,
  fit: BoxFit.cover,
);

class CardPlus extends StatelessWidget {
  final double? imageWidth;
  final double? imageHeight;
  final String? imageUrl;
  final Widget? image;
  final BoxFit? imageBoxFit;
  final String? title;
  final Widget? titleWidget;
  final String? subtitle;
  final Widget? subtitleWidget;
  final List<String>? actions;
  final Widget? actionsWidget;
  final Widget? trailing;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final void Function(String name)? onAction;

  const CardPlus({
    super.key,
    this.imageUrl,
    this.image,
    this.title,
    this.titleWidget,
    this.subtitle,
    this.subtitleWidget,
    this.actions,
    this.actionsWidget,
    this.trailing,
    this.onAction,
    this.imageWidth,
    this.imageHeight,
    this.imageBoxFit,
    this.titleStyle,
    this.subtitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (image != null) image!,
        if (imageUrl != null)
          CachedNetworkImage(
            colorBlendMode: BlendMode.dst,
            color: const Color(0xffededf2),
            imageUrl: imageUrl!,
            width: imageWidth ?? double.infinity,
            height: imageHeight,
            fit: imageBoxFit ?? BoxFit.cover,
            placeholder: (_, __) => placeholderImage,
            errorWidget: (_, __, ___) => placeholderImage,
          ),
        _buildTile(),
      ],
    );
  }

  ListTile _buildTile() {
    return ListTile(
      title: titleWidget ?? (title == null ? null : Text(title!)),
      subtitle: subtitleWidget ?? (subtitle == null ? null : Text(subtitle!)),
      trailing: trailing,
    );
  }

  Widget _buildActions() {
    return const Flex(direction: Axis.horizontal, children: []);
  }
}
