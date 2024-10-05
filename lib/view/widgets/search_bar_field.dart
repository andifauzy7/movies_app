import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarField extends StatelessWidget {
  final bool? enabled;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final TextEditingController? controller;
  const SearchBarField({
    super.key,
    this.onTap,
    this.enabled,
    this.focusNode,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextField(
        enabled: enabled,
        focusNode: focusNode,
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          hintText: 'Search',
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 20,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 12,
            ),
            child: SvgPicture.asset(
              'assets/icons/ic_search.svg',
              colorFilter: const ColorFilter.mode(
                Color(0xFF67686D),
                BlendMode.srcIn,
              ),
            ),
          ),
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF67686D),
              ),
          fillColor: const Color(0xFF3A3F47),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF3A3F47)),
            borderRadius: BorderRadius.circular(16),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF3A3F47)),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF3A3F47)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
