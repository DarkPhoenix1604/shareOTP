import 'package:flutter/material.dart';

import '../../common/app_colors.dart';
import '../../common/styles.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool? logo;
  final bool? resizeToAvoidBottomInset;
  final Color backgroundColor;
  const BaseScreen({
    super.key,
    required this.child,
    this.logo,
    this.resizeToAvoidBottomInset,
    this.backgroundColor = const Color.fromARGB(255, 238, 233, 233),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(color: backgroundColor, child: SafeArea(child: child)),
    );
  }
}

class BaseScreenWithLogo extends StatelessWidget {
  final Widget child;
  const BaseScreenWithLogo({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        color: AppColors.white,
        child: SafeArea(
          child: Padding(
            padding: Styles.edgeInsetsAll20,
            child: Column(
              children: [
                // Styles.sizedBoxTop,

                Styles.sizedBoxH20,
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MaterialBaseScreen extends StatelessWidget {
  final Widget child;
  final bool scroll;
  final String title;
  final void Function()? onBack;
  const MaterialBaseScreen({
    super.key,
    required this.title,
    required this.child,
    this.onBack,
    this.scroll = false,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        color: AppColors.white,
        child: Padding(
          padding: Styles.edgeInsetsAll20,
          child: scroll
              ? ScrollBody(title: title, onBack: onBack, child: child)
              : NonScrollBody(title: title, onBack: onBack, child: child),
        ),
      ),
    );
  }
}

class MaterialTabScreen extends StatelessWidget {
  final Widget child;

  const MaterialTabScreen({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        color: AppColors.white,
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: Styles.edgeInsetsAll20,
            child: child,
          ),
        ),
      ),
    );
  }
}

// class ScaffoldBaseScreen extends StatelessWidget {
//   final Widget child;
//   final String? title;
//   final bool scroll;
//   final void Function()? onBack;
//   final bool? resizeToAvoidBottomInset;

//   const ScaffoldBaseScreen({
//     super.key,
//     this.title,
//     required this.child,
//     this.onBack,
//     this.scroll = false,
//     this.resizeToAvoidBottomInset,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         resizeToAvoidBottomInset: resizeToAvoidBottomInset,
//         body: SafeArea(child: child),
//       ),
//     );
//   }
// }

class ScaffoldBaseScreen extends StatelessWidget {
  final Widget view;
  final String title;
  final bool automaticallyImplyLeading;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? actions;
  const ScaffoldBaseScreen({
    super.key,
    required this.title,
    required this.view,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.resizeToAvoidBottomInset = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: automaticallyImplyLeading,
        toolbarHeight: 70,
        title: Text(
          title,
          style: const TextStyle(color: AppColors.black, fontSize: 18),
        ),
        backgroundColor: AppColors.white,
        elevation: 0.0,
        actions: actions,
      ),
      body: SafeArea(child: Padding(padding: Styles.edgeInsetsAll08, child: view)),
    );
  }
}

// Padding(
//     padding: Styles.edgeInsetsAll20,
//     child: scroll
//         ? ScrollBody(title: title, onBack: onBack, child: child)
//         : NonScrollBody(title: title, onBack: onBack, child: child)),
class ScrollBody extends StatelessWidget {
  final Widget child;
  final String title;
  final void Function()? onBack;

  const ScrollBody({super.key, required this.child, required this.title, this.onBack});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Styles.sizedBoxTop,
        CustomerAppBar(title: title, onBack: onBack),
        Styles.sizedBoxH20,
        child,
      ],
    );
  }
}

class NonScrollBody extends StatelessWidget {
  final Widget child;
  final String title;
  final void Function()? onBack;

  const NonScrollBody({super.key, required this.child, required this.title, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Styles.sizedBoxTop,
        CustomerAppBar(title: title, onBack: onBack),
        Styles.sizedBoxH20,
        child,
      ],
    );
  }
}

class CustomerAppBar extends StatelessWidget {
  final String title;
  final bool leading;
  final void Function()? onBack;
  const CustomerAppBar({super.key, required this.title, this.leading = false, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            textAlign: leading ? TextAlign.center : TextAlign.start,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppColors.text,
            ),
          ),
        )
      ],
    );
  }
}
