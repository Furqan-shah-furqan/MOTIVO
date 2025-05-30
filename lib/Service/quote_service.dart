import 'dart:math';
import 'package:flutter/material.dart';

class QuoteService extends ChangeNotifier {
  List get getallQuotes => [
    painQuotes,
    successQuotes,
    hustleQuotes,
    disciplineQuotes,
  ];

  List<String> disciplineQuotes = [
    "Discipline is the bridge between goals and accomplishment.",
    "Without discipline, success is just a dream.",
    "Self-discipline is freedom.",
    "Discipline turns dreams into reality.",
    "Don’t wish for it. Work for it—daily.",
    "Success is nothing without discipline.",
    "Your future depends on your discipline today.",
    "Discipline is doing what needs to be done even when you don’t feel like it.",
    "The pain of discipline is far better than the pain of regret.",
    "Discipline is the backbone of greatness.",
    "With discipline, anything is possible.",
    "Discipline creates consistency, and consistency creates results.",
    "Discipline is choosing between what you want now and what you want most.",
    "Stay focused. Stay disciplined. Stay grinding.",
    "You win by staying consistent, not by staying motivated.",
    "Discipline makes habits. Habits build legacies.",
    "Discipline isn't punishment—it's training.",
    "Make discipline your best friend.",
    "Discipline is the hidden key behind every success story.",
    "Motivation gets you going. Discipline keeps you growing.",
  ];

  List<String> hustleQuotes = [
    "Hustle until your haters ask if you’re hiring.",
    "Grind in silence, let your success make the noise.",
    "Work like someone’s working 24/7 to take it all from you.",
    "The dream is free. The hustle is sold separately.",
    "Stay humble. Hustle hard.",
    "You can’t have a million-dollar dream with a minimum-wage work ethic.",
    "Hustle beats talent when talent doesn’t hustle.",
    "Wake up. Grind. Repeat.",
    "Hustle until your idols become your rivals.",
    "Excuses will always be there. Opportunity won’t.",
    "Work hard in silence. Let success shout.",
    "The hustle never stops.",
    "Fall in love with the process, not just the result.",
    "Your hustle defines your future.",
    "Don’t stop when you’re tired. Stop when you’re done.",
    "Success is rented. Rent is due every day.",
    "All hustle. No luck.",
    "Losers quit when they’re tired. Winners quit when they’ve won.",
    "The grind doesn’t care about your feelings.",
    "Dreams don’t work unless you do.",
  ];

  List<String> successQuotes = [
    "Success is not for the lazy.",
    "Dream it. Believe it. Build it.",
    "Success comes to those who persist.",
    "The road to success is always under construction.",
    "Success is earned, not given.",
    "Success is walking from failure to failure with no loss of enthusiasm.",
    "Push until something breaks – then push further.",
    "If you want success, double your failure rate.",
    "Success doesn’t sleep, neither should you.",
    "Small steps every day lead to big success.",
    "Your grind determines your shine.",
    "Success is what happens when preparation meets opportunity.",
    "Doubt kills more success than failure ever will.",
    "Hard work beats talent when talent doesn’t work hard.",
    "Don’t wait for opportunity. Create it.",
    "Success demands sacrifice.",
    "The distance between dreams and reality is called action.",
    "Success begins with self-belief.",
    "There is no elevator to success—you have to take the stairs.",
    "Success favors the bold.",
  ];

  List<String> painQuotes = [
    "Pain is temporary. Quitting lasts forever.",
    "Your pain today is your power tomorrow.",
    "Behind every strong person is a story that gave them no choice.",
    "Pain shapes warriors into legends.",
    "Embrace the pain, it’s part of the process.",
    "The deeper the pain, the greater the growth.",
    "Let your pain speak through your progress.",
    "Scars remind us that we survived.",
    "Pain teaches what pleasure never could.",
    "What hurts now will be your strength later.",
    "You either suffer the pain of discipline or the pain of regret.",
    "Pain is a signal you're still alive and still fighting.",
    "Every storm runs out of rain. So does pain.",
    "Strength grows in the moments when you think you can’t go on but you do.",
    "Turn your pain into your power.",
    "Pain is fuel for the fire inside.",
    "The struggle you’re in today is developing the strength you need tomorrow.",
    "Let the pain push you to greatness.",
    "Sometimes pain is the only teacher left.",
    "Pain is not your enemy. It's your guide.",
  ];

  List<String> quoteList = [
    "Push yourself, because no one else is going to do it for you.",
    "Don’t watch the clock; do what it does. Keep going. – Sam Levenson",
    "Your only limit is your mind.",
    "Discipline is choosing between what you want now and what you want most.",
    "Doubt kills more dreams than failure ever will. – Suzy Kassem",
    "Success doesn’t come from what you do occasionally, it comes from what you do consistently.",
    "The pain you feel today will be the strength you feel tomorrow.",
    "Don't quit. Suffer now and live the rest of your life as a champion. – Muhammad Ali",
    "The harder you work for something, the greater you’ll feel when you achieve it.",
    "Winners are not afraid of losing. But losers are. Failure is part of the process of success. – Robert Kiyosaki",
    "Dream big. Start small. Act now.",
    "You don’t have to be great to start, but you have to start to be great. – Zig Ziglar",
    "Every accomplishment starts with the decision to try.",
    "If it doesn’t challenge you, it won’t change you.",
    "Hustle in silence and let your success make the noise.",
    "You were not born to just pay bills and die. You were born to live.",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
    "Stay away from people who try to belittle your ambitions. Small people always do that. – Mark Twain",
    "Success is what comes after you stop making excuses.",
    "Turn your wounds into wisdom. – Oprah Winfrey",
  ];
  String quotes = 'GENERATE QUOTE';

  // Random Quotes..
  getRandomQuote() {
    quotes = quoteList[Random().nextInt(quoteList.length)];
    notifyListeners();
  }

  // Pain Quote..
  getPainQuote() {
    quotes = painQuotes[Random().nextInt(painQuotes.length)];
    notifyListeners();
  }

  // Discipline Quote..
  getDisciplineQuote() {
    quotes = disciplineQuotes[Random().nextInt(disciplineQuotes.length)];
    notifyListeners();
  }

  // Hustle Quote..
  getHustleQuote() {
    quotes = hustleQuotes[Random().nextInt(hustleQuotes.length)];
    notifyListeners();
  }

  // Success Quote..
  getSuccessQuote() {
    quotes = successQuotes[Random().nextInt(successQuotes.length)];
    notifyListeners();
  }
}
