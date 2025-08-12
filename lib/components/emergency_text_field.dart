import 'package:flutter/material.dart';

class EmergencyTextField extends StatefulWidget {
  const EmergencyTextField({super.key});

  @override
  State<EmergencyTextField> createState() => _EmergencyTextFieldState();
}

class _EmergencyTextFieldState extends State<EmergencyTextField> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final hasText = _controller.text.trim().isNotEmpty;
      if (hasText != _hasText) {
        setState(() => _hasText = hasText);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    // TODO: handle send message
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final fieldColor = const Color(0xFFE6E6E6).withValues(alpha: 0.75);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text field expands up to 5 lines
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 5 * 24.0 + 24, // approx line height * max lines + padding
              ),
              child: Scrollbar(
                child: TextField(
                  controller: _controller,
                  cursorColor: const Color(0xFF336051),
                  maxLines: null,
                  style: const TextStyle(fontFamily: 'Tahoma', fontSize: 18),
                  decoration: const InputDecoration(
                    isCollapsed: true, // remove default padding
                    hintText: 'Type here...',
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 16),
                  ),
                ),
              ),
            ),

            // Buttons row at bottom right
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.mic_none, size: 24),
                    color: const Color(0xFF1A1A1A),
                    onPressed: () {
                      // handle mic action
                    },
                  ),
                  if (_hasText)
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1A1A),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_upward, size: 24),
                        color: const Color(0xFFFAFAFA),
                        onPressed: _sendMessage,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
