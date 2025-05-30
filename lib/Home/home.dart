import 'package:flutter/material.dart';
import 'package:motivo/Components/my_components.dart';
import 'package:motivo/Service/quote_service.dart';
import 'package:motivo/Service/utility.dart';
import 'package:motivo/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final quoteservice = Provider.of<QuoteService>(context, listen: false);
    // Colror
    Color mainColor = ColorScheme.of(context).background;
    // screenWidth.
    double w = ScreenSize.width(context);
    double h = ScreenSize.height(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      quoteservice.getRandomQuote();
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Consumer<QuoteService>(
          builder: (context, quotevalue, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: h * 0.2),
                Text('QUOTE OF THE DAY.', style: textStyle2),
                SizedBox(height: h * 0.1),
                Consumer<ThemeProvider>(
                  builder: (context, themevalue, child) {
                    return myContainer(
                      w * 0.8,
                      quotevalue.quotes.toUpperCase(),
                      w > 500 ? w * 0.028 : w * 0.045,
                      () {
                        quotevalue.getRandomQuote();
                        themevalue.resetFavButton();
                      },
                      context,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
