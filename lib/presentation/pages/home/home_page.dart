import 'package:clean_architecture_example/core/theme/consts/quotes_size.dart';
import 'package:clean_architecture_example/core/theme/widgets/quote_card.dart';
import 'package:clean_architecture_example/core/theme/widgets/quote_error.dart';
import 'package:clean_architecture_example/core/theme/widgets/quote_label.dart';
import 'package:clean_architecture_example/core/theme/widgets/quote_loader.dart';
import 'package:clean_architecture_example/presentation/pages/home/controller/home_bloc.dart';
import 'package:clean_architecture_example/presentation/pages/home/controller/home_event.dart';
import 'package:clean_architecture_example/presentation/pages/home/controller/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

late final HomeBloc _homeBloc;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _homeBloc = HomeBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _homeBloc..add(const GetRandomQuoteEvent()),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.amber[100],
            title: const QuoteLabel(
                text: 'QUOTES', quoteStyle: QuoteStyles.titleBold),
            centerTitle: true,
          ),
          backgroundColor: Colors.amber[100],
          body: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {},
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.status == HomeStatus.loading) {
                  return const QuoteLoader();
                } else if (state.status == HomeStatus.success) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Center(
                        child: QuoteCard(
                          content: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                QuoteLabel(
                                  text: (state.quote?.quote ?? ''),
                                  quoteStyle: QuoteStyles.regularItalic,
                                ),
                                const SizedBox(
                                  height: QuotesSize.y40,
                                ),
                                QuoteLabel(
                                  text: (state.quote?.author ?? ''),
                                  quoteStyle: QuoteStyles.regular,
                                ),
                              ]),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  );
                } else if (state.status == HomeStatus.failure) {
                  return const QuoteError();
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          floatingActionButton: IconButton(
            icon: const Icon(
              Icons.change_circle,
              size: 40,
            ),
            onPressed: () {
              _homeBloc.add(const GetRandomQuoteEvent());
            },
          ),
        ));
  }
}
