// ignore_for_file: non_constant_identifier_names

//import 'dart:math';

class Texts {
  // Texts({required this.number});
  //final Random_Number =  Random();
  //Random_Number

  List Regtext = [
    "Join Us in Simplifying Your Health Journey",
    "Sign Up for Effortless Health Access",
    "Bringing Health & Wellness Closer to You",
    "Start Your Journey to Better Health Today",
    "Empowering Your Health, One Tap at a Time",
    "Your Health Partner Begins Here – Register Now",
    "Quality Care, Just a Sign-Up Away",
    "Join the App That Cares for You",
    "Where Health Meets Technology – Join Now",
    "Your Wellness Journey Starts with a Simple Step",
    "Reliable Health Support, Personalized for You",
    "Effortless Access to Trusted Pharmacy Care",
    "A Healthier Life Begins with a Simple Tap",
    "Your Partner in Health Starts Here",
    "Sign Up for Easy, Convenient Care",
    "Unlock a World of Health & Convenience",
    "Join the Community that Cares",
    "Start Your Path to a Healthier You",
    "Register for 24/7 Health Access",
    "Quality, Convenience, and Care – Right Here"
  ];
  List Logtext = [
    "Welcome Back to Hassle-Free Health",
        "Log In to Access Care at Your Fingertips",
        "Your Trusted Pharmacy Awaits",
        "Back to Health with Just One Tap",
        "Log In for Personalized Pharmacy Support",
        "Seamless Care Starts Here",
        "Your Health Essentials, Just a Login Away",
        "Welcome Back to Simple, Secure Health Access",
        "Continue Your Path to Wellness",
        "Your Health Journey Awaits – Log In",
        "Log In and Get Back to What Matters",
        "Access Your Health Records and Refills",
        "Here for Your Health, Every Time You Log In",
        "Reconnecting You to Wellness",
        "Your Pharmacy, Always Ready – Log In Now",
        "The App That Cares – Just One Tap Away",
        "Access Care and Convenience, Anytime",
        "Log In to a World of Health Resources",
        "Here to Support Your Health Goals",
        "Welcome Back to Your Personal Health Hub"
  ];
  String getRegRandomtext(int number) {
    if (number >= 0 && number < Regtext.length) {
      return Regtext[number];
    } else {
      return "Invalid number";
    }
  }

  String getLogRandomtext(int number) {
    if (number >= 0 && number < Logtext.length) {
      return Logtext[number];
    } else {
      return "Invalid number";
    }
  }
}
