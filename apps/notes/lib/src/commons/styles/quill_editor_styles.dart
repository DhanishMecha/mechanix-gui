import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:widgets/extension.dart';

DefaultStyles quillEditorStyle(BuildContext context) {
  return DefaultStyles(
    bold: const TextStyle(fontWeight: FontWeight.w700),
    italic: const TextStyle(fontStyle: FontStyle.italic),
    underline: const TextStyle(decoration: TextDecoration.underline),
    paragraph: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: "Overused Grotesk",
        color: context.colorScheme.onSurface,
        height: 1.45, // Word-like line spacing
        letterSpacing: 0.0,
      ),
      const HorizontalSpacing(0, 0), // Standard margins
      const VerticalSpacing(0, 0), // Paragraph spacing
      const VerticalSpacing(0, 0), // No additional line spacing here
      null,
    ),

    // Heading 1 - Word-like style
    h1: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: context.colorScheme.onSurface,
        height: 1.3,
        fontFamily: "Overused Grotesk",
        letterSpacing: 0,
      ),
      const HorizontalSpacing(0, 0), // Standard margins
      const VerticalSpacing(10, 10),
      const VerticalSpacing(0, 0),
      null,
    ),

    // Heading 2 - Word-like style
    h2: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: context.colorScheme.onSurface,
        fontFamily: "Overused Grotesk",
        height: 1.25,
        letterSpacing: 0,
      ),
      const HorizontalSpacing(0, 0), // Standard margins
      const VerticalSpacing(5, 5),
      const VerticalSpacing(0, 0),
      null,
    ),

    // Heading 3 - Word-like style
    h3: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: "Overused Grotesk",
        color: context.colorScheme.onSurface,
        height: 1.2,
        letterSpacing: 0.2,
      ),
      const HorizontalSpacing(0, 0),
      const VerticalSpacing(2, 2),
      const VerticalSpacing(0, 0),
      null,
    ),

    // Lists - Word-like formatting
    placeHolder: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: "Overused Grotesk",
        color: context.colorScheme.primary,
        height: 1.2,
        letterSpacing: 0.2,
      ),
      const HorizontalSpacing(0, 0),
      const VerticalSpacing(14, 8),
      const VerticalSpacing(0, 0),
      null,
    ),
    // Quote block - Word-like style
    quote: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 16,
        color:
            context
                .colorScheme
                .surfaceContainerLowest, // Slightly dimmed for quotes
        height: 1.2,
        fontFamily: "Overused Grotesk",
        fontStyle: FontStyle.italic,
      ),
      const HorizontalSpacing(0, 0), // Indented left margin
      const VerticalSpacing(8, 8),
      const VerticalSpacing(0, 0),
      const BoxDecoration(
        border: Border(left: BorderSide(color: Color(0xFF666666), width: 3)),
      ),
    ),

    // Code block - Word-like style
    code: DefaultTextBlockStyle(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: context.colorScheme.onSurface,
        height: 1.35,
        letterSpacing: -0.4,
        fontFamily: 'Geist Mono',
      ),
      const HorizontalSpacing(0, 0),
      const VerticalSpacing(16, 16),
      const VerticalSpacing(0, 0),

      BoxDecoration(
        color: context.colorScheme.tertiary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // border: Border.all(color: Color(0xFF444444), width: 1),
      ),
    ),

    // Inline code
    // Add inside DefaultStyles
    inlineCode: InlineCodeStyle(
      backgroundColor: context.colorScheme.tertiary, // dark background
      radius: const Radius.circular(4), // rounded edges
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: context.colorScheme.onSurface, // light text
        height: 1.45,
        fontFamily: 'Geist Mono',
      ),
    ),

    // Text alignment styles
    // align:  DefaultTextBlockStyle(
    //   TextStyle(fontSize: 16, color: context.colorScheme.onSurface, height: 1.2),
    //   HorizontalSpacing(12, 12),
    //   VerticalSpacing(6, 6),
    //   VerticalSpacing(0, 0),
    //   null,
    // ),
    lists: DefaultListBlockStyle(
      TextStyle(
        color: context.colorScheme.onSurface,
        fontWeight: FontWeight.w400,
        fontFamily: "Overused Grotesk",
      ),
      const HorizontalSpacing(0, 0), // Standard margins
      const VerticalSpacing(2, 2),
      const VerticalSpacing(2, 2),
      null,
      null,
    ),

    strikeThrough: TextStyle(
      decoration: TextDecoration.lineThrough,
      decorationColor: context.colorScheme.onSurfaceVariant,
      fontFamily: "Overused Grotesk",
      color: context.colorScheme.onSurfaceVariant,
    ),

    // Link style
    link: const TextStyle(
      color: Color(0xFF4A9EFF),
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF4A9EFF),
      fontFamily: "Overused Grotesk",
    ),

    // Color and size variations
    color: context.colorScheme.onSurface, // Default text color
    // Indent styles for nested content
    // indent:  DefaultTextBlockStyle(
    //   TextStyle(fontSize: 16, color: context.colorScheme.onSurface, height: 1.2),
    //   HorizontalSpacing(36, 12), // Increased left margin for indent
    //   VerticalSpacing(6, 6),
    //   VerticalSpacing(0, 0),
    //   null,
    // ),
  );
}
