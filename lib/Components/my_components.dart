import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivo/Service/quote_service.dart';
import 'package:motivo/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

// text Styles
TextStyle textStyle = GoogleFonts.raleway(
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
TextStyle textStyle2 = GoogleFonts.oswald(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

// main Container.
Container myContainer(width, value, txtsize, onTap, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(15),
    width: width,
    decoration: BoxDecoration(
      color: ColorScheme.of(context).background,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: ColorScheme.of(context).tertiary.withOpacity(0.9),
        width: 2,
      ),
    ),
    child: Consumer<ThemeProvider>(
      builder: (context, fav, child) {
        return Column(
          spacing: 20,
          children: [
            Text(
              value,
              style: GoogleFonts.raleway(
                color: ColorScheme.of(context).tertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    fav.toggleFavButton();
                    fav.saveQuotes(value);
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: fav.isFavorite ? Colors.red : Colors.grey[600],
                  ),
                ),
                MaterialButton(
                  color: ColorScheme.of(context).background,
                  onPressed: onTap,
                  child: Text(
                    'QUOTE',
                    style: GoogleFonts.raleway(
                      color: ColorScheme.of(context).tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
}

// Quote category names.
List<String> themeCategory = [
  'Home',
  'Pain',
  'Success',
  'Hustle',
  'Discipline',
];
// Quote Theme List.
Container themeList(width) {
  return Container(
    height: 50,
    width: width,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.7),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white.withOpacity(0.8), width: 1.5),
    ),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: themeCategory.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Provider.of<QuoteService>(
              context,
              listen: false,
            ).getallQuotes[index];
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(themeCategory[index]),
          ),
        );
      },
    ),
  );
}
