import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainnnig/core/utils/appColors.dart';
import 'package:trainnnig/core/utils/appStrings.dart';
import 'package:trainnnig/features/random_quote/prsentation/cubit/quote_cubit.dart';
import 'package:trainnnig/features/random_quote/prsentation/cubit/quote_state.dart';
import 'package:trainnnig/features/random_quote/prsentation/widget/quoteScreenContent.dart';

class quoteScreen extends StatefulWidget {
  const quoteScreen({super.key});

  @override
  State<quoteScreen> createState() => _quoteScreenState();
}

class _quoteScreenState extends State<quoteScreen> {

  _qouteScreenContent() {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        if (state is QuoteLoadedState) {
          return const Center(
            child: CircularProgressIndicator(
              color: appColors.primaryColor,
            ),
          );
        } else if (state is QuoteLoadedState) {
          return Center(
            child: Column(
              children: [
                qouteScreenContent(Quote: state.QuoteClass),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: appColors.primaryColor),
                  child: InkWell(
                      onTap: (){
                        _getData();
                      },
                      child: const Icon(
                        Icons.refresh,
                        size: 50,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          );
        } else {
          return const Center(
            child: Text("Unknow event happen"),
          );
        }
      },
    );
  }

  final appBar = AppBar(
    title: const Text(appStrings.enAppName),
  );

  void _getData() {
    BlocProvider.of<QuoteCubit>(context).getQuoteAllSources();
  }

  @override
  void initState() {
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          child: _qouteScreenContent(),
        ),
      ),
    );
  }
}
