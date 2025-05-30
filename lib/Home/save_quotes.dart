import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivo/Theme/theme_provider.dart';
import 'package:provider/provider.dart';
import '../Service/utility.dart';

class SaveQuotes extends StatelessWidget {
  const SaveQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    double w = ScreenSize.width(context);
    // double h = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          "Saved Quotes",
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.saveQuotesList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: w * 0.8,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorScheme.of(context).background,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorScheme.of(
                            context,
                          ).tertiary.withOpacity(0.9),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              value.saveQuotesList[index],
                              style: GoogleFonts.raleway(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              value.deleteQuote(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
