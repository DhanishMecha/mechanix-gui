import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechanix_notes/src/commons/icons.dart';
import 'package:mechanix_notes/src/features/home/bloc/notes_bloc.dart';
import 'package:mechanix_notes/src/features/home/bloc/notes_event.dart';
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/filled_button/mechanix_filled_button_theme.dart';

class DeleteBottomSheet extends StatelessWidget {
  final String title;
  final String message;
  final BuildContext bottomSheetContext;
  const DeleteBottomSheet({
    super.key,
    required this.title,
    required this.message,
    required this.bottomSheetContext,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: Image.asset(NotesIcon.slider)),
        Container(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 16,
            top: 32,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: context.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                message,
                style: TextStyle(
                  color: context.colorScheme.onSurface,
                  fontSize: 18,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: MechanixFilledButton(
                      theme: MechanixFilledButtonThemeData(
                        textStyle: TextStyle(
                          fontSize: 18,
                          height: 1.25,
                          fontWeight: FontWeight.w400,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      label: "Cancel",
                      backgroundColor: Colors.grey.shade800,
                      onPressed: () => Navigator.pop(bottomSheetContext),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: MechanixFilledButton(
                      label: "Delete",
                      theme: MechanixFilledButtonThemeData(
                        textStyle: TextStyle(
                          fontSize: 18,
                          height: 1.25,
                          fontWeight: FontWeight.w400,
                          color: context.colorScheme.onSurface,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF00000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(bottomSheetContext);
                        context.read<NotesBloc>().add(
                          DeleteNotes(deleteIds: const []),
                        );
                        context.read<NotesBloc>().add(ClearSelection());
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
