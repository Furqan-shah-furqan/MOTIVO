import 'package:flutter/material.dart';
import 'package:motivo/Service/quote_service.dart';
import 'package:provider/provider.dart';
import '../Components/my_components.dart';
import '../Service/utility.dart';
import '../Theme/theme_provider.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    Color mainColor = ColorScheme.of(context).background;
    double w = ScreenSize.width(context);
    double h = ScreenSize.height(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<QuoteService>(context, listen: false).getSuccessQuote();
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Consumer<QuoteService>(
        builder: (context, quotevalue, child) {
          return Center(
            child: Column(
              children: [
                SizedBox(height: h * 0.2),
                Text('SUCCESS QUOTES', style: textStyle2),
                SizedBox(height: h * 0.1),
               Consumer<ThemeProvider>(
                  builder: (context, themevalue, child) {
                    return myContainer(
                      w * 0.8,
                      quotevalue.quotes.toUpperCase(),
                      w > 500 ? w * 0.028 : w * 0.045,
                      () {
                        quotevalue.getSuccessQuote();
                        themevalue.resetFavButton();
                      },
                      context,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
