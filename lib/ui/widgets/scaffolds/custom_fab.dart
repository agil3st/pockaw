import 'package:buddyjet/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomFab extends StatelessWidget {
  CustomFab({super.key});

  final _key = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context) {
    void toggleFAB() {
      final state = _key.currentState;
      if (state != null) {
        state.toggle();
      }
    }

    return ExpandableFab(
      key: _key,
      type: ExpandableFabType.fan,
      pos: ExpandableFabPos.center,
      fanAngle: 180,
      duration: const Duration(milliseconds: 100),
      openButtonBuilder: RotateFloatingActionButtonBuilder(
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onLongPress: () {
            debugPrint('quick action');
            context.push(AppRouter.expenseForm);
          },
          onTap: toggleFAB,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: const Icon(TablerIcons.plus),
          ),
        ),
      ),
      closeButtonBuilder: DefaultFloatingActionButtonBuilder(
        shape: const CircleBorder(),
        child: const Icon(TablerIcons.x),
      ),
      onOpen: () {},
      onClose: () {},
      overlayStyle: const ExpandableFabOverlayStyle(
        color: Colors.black38,
        blur: 1.2,
      ),
      children: [
        Column(
          children: [
            const Text('Income'),
            const Gap(10),
            FloatingActionButton(
              heroTag: null,
              shape: const CircleBorder(),
              child: const Icon(
                TablerIcons.arrow_bar_to_down,
                color: Colors.green,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Column(
          children: [
            const Text('Expense'),
            const Gap(10),
            FloatingActionButton(
              heroTag: null,
              shape: const CircleBorder(),
              child: const Icon(
                TablerIcons.arrow_bar_up,
                color: Colors.red,
              ),
              onPressed: () {
                toggleFAB();
                context.push(AppRouter.expenseForm);
              },
            ),
          ],
        ),
      ],
    );
  }
}
