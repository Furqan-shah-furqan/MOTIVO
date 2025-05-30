import 'package:motivo/Components/my_components_2.dart';
import 'package:motivo/Home/save_quotes.dart';
import 'package:motivo/Theme/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    Color mainColor = ColorScheme.of(context).background;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          actionsPadding: EdgeInsets.symmetric(horizontal: 15),
          title: Text(
            'MOTIVO',
            style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
          ),
          actions: [
            Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SaveQuotes()),
                    );
                  },
                  icon: Icon(
                    Icons.favorite,
                    color:
                        value.saveQuotesList.isEmpty
                            ? Colors.grey[600]
                            : Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
        drawer: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return mydrawer(mainColor, context, themeProvider);
          },
        ),
        body: Column(
          children: [SizedBox(height: 10), myTabBar(context), myTabBarView()],
        ),
      ),
    );
  }

  Drawer mydrawer(
    Color mainColor,
    BuildContext context,
    ThemeProvider themeProvider,
  ) {
    return Drawer(
      backgroundColor: mainColor,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'MOTIVO',
              style: GoogleFonts.raleway(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text(
                'CHANGE THEME',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              trailing: CupertinoSwitch(
                thumbColor: Theme.of(context).colorScheme.background,
                activeColor: Theme.of(context).colorScheme.tertiary,
                value: themeProvider.themeData.brightness == Brightness.dark,
                onChanged: (value) {
                  themeProvider.toggleTheme();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
