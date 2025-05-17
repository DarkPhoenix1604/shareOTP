import 'package:another_telephony/telephony.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/styles.dart';
import '../../../../core/enum/status.dart';
import '../../../../core/widget/button.dart';
import '../../../../core/widget/input_box.dart';

// import 'package:telephony/telephony.dart';

import '../../../../core/model/app_sms_model.dart';
import '../../../../core/utils/log_util.dart';
import '../../../../core/widget/base_screen.dart';
import '../../../../main.dart';
import '../../domain/entities/add_user.dart';
import '../bloc/access_user.dart/acces_users_bloc.dart';
import '../bloc/message/message_bloc.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  // SmsReceiver receiver = SmsReceiver();

  final name = TextEditingController();
  final number = TextEditingController();
  final pattern = TextEditingController();
  late final AccessUserBloc bloc;

  final telephony = Telephony.instance;
  @override
  void initState() {
    super.initState();
    // initPlatformState();
    Future.delayed(Duration.zero, () async {
      bloc = context.read<AccessUserBloc>();

      // receiver.onSmsReceived?.listen((SmsMessage msg) {

      // });
      bloc.add(const AccessUserEvent.init());
    });
  }

  // Future<void> initPlatformState() async {
  //   final bool? result = await telephony.requestSmsPermissions;
  //   if (result != null && result) {
  //     telephony.listenIncomingSms(
  //       onNewMessage: (message) {
  //         final accessUsers = bloc.state.accessUsers;
  //         for (var user in accessUsers) {
  //           LogUtility.info('Patter  ${user.pattern}');
  //           final exp = RegExp(r'' + user.pattern);
  //           LogUtility.info('Resutl   ${exp.hasMatch(message.body ?? '')}');
  //           if (exp.hasMatch(message.body ?? '')) {
  //             final newsms = AppSMSModel(body: message.body ?? '', to: user.number);
  //             context.read<MessageBloc>().add(MessageEvent.send(newsms, -1));
  //           }
  //         }
  //       },
  //       onBackgroundMessage: onBackgroundMessage,
  //       listenInBackground: true,
  //     );
  //   }
  //   if (!mounted) return;
  // }

  @override
  void dispose() {
    __dispose();
    super.dispose();
  }

  void __clear() {
    name.clear();
    number.clear();
    pattern.clear();
  }

  void __dispose() {
    name.dispose();
    number.dispose();
    pattern.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBaseScreen(
      title: 'Messages',
      actions: [
        // IconButton(
        //   onPressed: () {
        //     context.read<MessageBloc>().add(const MessageEvent.init());
        //   },
        //   icon: const Icon(Icons.refresh),
        // )
      ],
      view: BlocConsumer<AccessUserBloc, AccessUserState>(
        listener: (context, state) {
          if (state.addStatus.success) {
            context.read<AccessUserBloc>().add(const AccessUserEvent.init());
            __clear();
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              CustomTextFormField(
                hintText: 'Name',
                controller: name,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.name(value));
                },
              ),
              Styles.sizedBoxH10,
              CustomTextFormField(
                hintText: 'Number',
                controller: number,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.number(value));
                },
              ),
              Styles.sizedBoxH10,
              CustomTextFormField(
                hintText: 'Pattern',
                controller: pattern,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.pattern(value));
                },
              ),
              Styles.sizedBoxH10,
              AppButton(
                borderRadius: Styles.borderRadiusCircular05,
                name: 'Add',
                buttonColor: state.validation ? AppColors.primaryColor : AppColors.grey400,
                onPressed: state.validation
                    ? () {
                        context.read<AccessUserBloc>().add(const AccessUserEvent.add());
                      }
                    : null,
              ),
              Styles.sizedBoxH10,
              __AccessUsers(
                accessUsers: state.accessUsers,
              ),
            ],
          );
        },
      ),
    );
  }
}

class __Checkbox extends StatelessWidget {
  const __Checkbox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccessUserBloc, AccessUserState>(
      builder: (context, state) {
        return Padding(
          padding: Styles.edgeInsetsOnlyW10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Access',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
              ),
              Checkbox(
                value: state.bubbleWrap,
                activeColor: AppColors.primaryColor,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.bubbleWrap(value!));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class __AccessUsers extends StatelessWidget {
  final List<AddAccessUser> accessUsers;
  const __AccessUsers({super.key, required this.accessUsers});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: accessUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            minVerticalPadding: 8,
            minLeadingWidth: 4,
            title: Text('${accessUsers[index].name} : ${accessUsers[index].pattern}'),
            subtitle: Text(
              accessUsers[index].number,
              style: const TextStyle(fontSize: 12),
            ),
            trailing: IconButton(
              onPressed: () async {
                context.read<AccessUserBloc>().add(const AccessUserEvent.editReset());
                await showModalBottomSheet(
                  context: context,
                  shape: Styles.shapeBorder,
                  builder: (_) {
                    return RejectBottomModel(user: accessUsers[index]);
                  },
                ).then((value) {
                  context.read<AccessUserBloc>().add(const AccessUserEvent.editReset());
                });
              },
              icon: const Icon(Icons.edit),
            ),
          );
        },
        separatorBuilder: (context, index) => Styles.sizedBoxH08,
      ),
    );
  }
}

class RejectBottomModel extends StatefulWidget {
  final AddAccessUser user;
  const RejectBottomModel({super.key, required this.user});

  @override
  State<RejectBottomModel> createState() => _RejectBottomModelState();
}

class _RejectBottomModelState extends State<RejectBottomModel> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final bloc = context.read<AccessUserBloc>();
      bloc.add(AccessUserEvent.name(widget.user.name));
      bloc.add(AccessUserEvent.number(widget.user.number));
      bloc.add(AccessUserEvent.pattern(widget.user.pattern));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccessUserBloc, AccessUserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: Styles.edgeInsetsAll18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextFormField(
                hintText: 'Name',
                initialValue: widget.user.name,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.name(value));
                },
              ),
              Styles.sizedBoxH10,
              CustomTextFormField(
                hintText: 'Number',
                initialValue: widget.user.number,
                // controller: number,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.number(value));
                },
              ),
              Styles.sizedBoxH10,
              CustomTextFormField(
                hintText: 'Pattern',
                initialValue: widget.user.pattern,
                // controller: pattern,
                onChanged: (value) {
                  context.read<AccessUserBloc>().add(AccessUserEvent.pattern(value));
                },
              ),
              Styles.sizedBoxH10,
              const __Checkbox(),
              AppButton(
                borderRadius: Styles.borderRadiusCircular05,
                name: 'Add',
                buttonColor: state.validation ? AppColors.primaryColor : AppColors.grey400,
                onPressed: state.validation
                    ? () {
                        Navigator.pop(context);
                        context.read<AccessUserBloc>().add(const AccessUserEvent.add());
                      }
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}

// class __Number extends StatelessWidget {
//   const __Number({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomTextFormField(
//       hintText: 'Number',
//       onChanged: (value){},
//     );
//   }
// }

/*
 BlocBuilder<MessageBloc, MessageState>(
        builder: (context, state) {
          if (state.status.loading) {
            return LoadingWidget.circularProgressIndicatorCenter;
          }
          return ListView.builder(
            itemCount: state.messages.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    minVerticalPadding: 8,
                    minLeadingWidth: 4,
                    title: Text(state.messages[index].body ?? 'empty'),
                    trailing: (state.sendStatus.loading && state.sendIndex == index)
                        ? LoadingWidget.circularProgressIndicator
                        : IconButton(
                            onPressed: () {
                              final sms = SmsMessage(
                                '+919967446285',
                                state.messages[index].body,
                              );
                              context.read<MessageBloc>().add(MessageEvent.send(sms, index));
                            },
                            icon: const Icon(Icons.send),
                          ),
                    subtitle: Text(state.messages[index].sender ?? 'empty'),
                  ),
                  const Divider(),
                ],
              );
            },
          );
        },
      ),

 */
