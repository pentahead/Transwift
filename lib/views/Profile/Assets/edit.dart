import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  final IconData icon;
  final TextEditingController controller;
  final bool enabled;

  const Edit({
    super.key,
    required this.icon,
    required this.controller,
    this.enabled = true,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    controller: widget.controller,
                    focusNode: _focusNode,
                    enabled: widget.enabled,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        widget.icon,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (widget.enabled) ...[
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 30,
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
