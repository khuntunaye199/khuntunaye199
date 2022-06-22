import 'package:flutter/material.dart';

class MMDate {
  ///မြန်မာ ၇က်နံပါတ်
  ///
  ///Myanmar Day [int no]
  static int mmday;

  ///မြန်မာလ နံပါတ်
  ///
  ///Myanmar Month [int no]
  static int mmmonth;

  ///မြန်မာနှစ် နံပါတ်
  /// Myanmar Year [int no]
  static int mmyear;

  ///မြန်မာ ဝါမထပ်သော လ
  ///
  ///သာမန်နှစ်၏ မြန်မာလများ
  static List<int> mmonth1no = [29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30];

  ///မြန်မာ ဝါငယ်ထပ်သောလ
  static List<int> mmonth2no = [
    29,
    30,
    29,
    30,
    30,
    29,
    30,
    29,
    30,
    29,
    30,
    29,
    30
  ];

  ///မြန်မာ ဝါကြီးထပ်သောလ
  static List<int> mmonth3no = [
    29,
    30,
    30,
    30,
    30,
    29,
    30,
    29,
    30,
    29,
    30,
    29,
    30
  ];

  ///မြန်မာ ဝါမထပ်သော လ
  ///
  ///သာမန်နှစ်၏ မြန်မာလများ
  static List<String> mmonthname = [
    "တန်ခူး",
    "ကဆုန်",
    "နယုန်",
    "ဝါဆို",
    "ဝါခေါင်",
    "တော်သလင်း",
    "သီတင်းကျွတ်",
    "တန်ဆောင်မုန်း",
    "နတ်တော်",
    "ပြာသို",
    "တပို့တွဲ",
    "တပေါင်း"
  ];

  ///မြန်မာ ဝါငယ်ထပ်သောလ
  static List<String> mmonthname2 = [
    "တန်ခူး",
    "ကဆုန်",
    "နယုန်",
    "ပထမ ဝါဆို",
    "ဒုတိယ ဝါဆို",
    "ဝါခေါင်",
    "တော်သလင်း",
    "သီတင်းကျွတ်",
    "တန်ဆောင်မုန်း",
    "နတ်တော်",
    "ပြာသို",
    "တပို့တွဲ",
    "တပေါင်း"
  ];

  ///မြန်မာ ဝါကြီးထပ်သောလ
  static List<String> mmonthname3 = [
    "တန်ခူး",
    "ကဆုန်",
    "နယုန်",
    "ပထမ ဝါဆို",
    "ဒုတိယ ဝါဆို",
    "ဝါခေါင်",
    "တော်သလင်း",
    "သီတင်းကျွတ်",
    "တန်ဆောင်မုန်း",
    "နတ်တော်",
    "ပြာသို",
    "တပို့တွဲ",
    "တပေါင်း"
  ];
  static List<String> mmonthnameEN = [
    "Tagu",
    "Kason",
    "Nayon",
    "Waso",
    "Wagaung",
    "Tawthalin",
    "Thadingyut",
    "Tazaungmon",
    "Nadaw",
    "Pyatho",
    "Tabodwe",
    "Tabaung"
  ];
  static List<String> mmonthnameEN2 = [
    "Tagu",
    "Kason",
    "Nayon",
    "First Waso",
    "Second Waso",
    "Wagaung",
    "Tawthalin",
    "Thadingyut",
    "Tazaungmon",
    "Nadaw",
    "Pyatho",
    "Tabodwe",
    "Tabaung"
  ];
  static List<String> mmonthnameEN3 = [
    "Tagu",
    "Kason",
    "Nayon",
    "First Waso",
    "Second Waso",
    "Wagaung",
    "Tawthalin",
    "Thadingyut",
    "Tazaungmon",
    "Nadaw",
    "Pyatho",
    "Tabodwe",
    "Tabaung"
  ];

  static List<String> mmdayMM = ["တနင်္လာ", "အင်"];
  static List<String> mmdayEN = ["Monday", ""];

  static List<String> mahaboteMM = [""];
  static List<String> mahaboteEN = [""];

  ///[MMDate] English Date မှ မြန်မာ၇က်စွဲသို့ ပြောင်းလဲပေးနိင်သော lib ဖြစ်ပါသည်...။ Eng Date များအား ပြောင်းလဲတွက်သောအခါ..JDN date သတ်မှတ်ချက်အပေါ်အခြေခံ ထားပါသည်.. ၊ ထိုနောက် မြန်မာ ပြက္ခဒိန် သို့ပြောင်းလဲတွက်ချက်သောအခါ တွက်ချက်မှုအားလုံးက မြန်မာစံတော်ချိန် (Myanmar Standard Time UTC+06:30 ) ပေါ်မှာ အခြေခံထားပြီး အဲဒါက လောင်ဂျီကျု ၉၇° ၃၀' ပေါ်မှာ အခြေခံပါတယ်။
  MMDate();
  var _edate = DateTime.now();

  ///မြန်မာ ပြက္ခဒိန်မှာ သူရိယနှစ် တစ်နှစ်ရဲ့ ကြာချိန် (Solar Year) ကို ၁၅၇၇၉၁၇၈၂၈/၄၃၂၀၀၀၀ (၃၆၅.၂၅၈၇၅၆၅) ရက် လို့သတ်မှတ်ထား ပါတယ် [Irwin, 1909]။ အဲဒီ ကိန်းသေ ကို SY လို့ခေါ်လိုက် ပါမယ်။
  var _sy = 1577917828 ~/ 4320000;

  /// မြန်မာနှစ် သုညနှစ် ရဲ့ အစကိန်းသေကို MO
// ( နှစ်တချို့ရဲ့ သိပြီးသား နှစ်ဆန်းချိန် တွေကို ja မှာ အစားထိုးပြီး၊ ပျမ်းမျှရှာပြီး ခန့်မှန်း တဲ့အခါ MO ကို ဂျူလီယန်ရက်တန်ဖိုး ၁၉၅၄၁၆၈.၀၅၀၆၂၃ လို့ ခန့်မှန်းလို့ ရပါတယ်။)
  var _mo = 1954168.050623;

  ///မြန်မာပြက္ခဒိန်မှာ စန္ဒြမာသ လ (lunar month) တစ်လကြာချိန်ကို ၁၅၇၇၉၁၇၈၂၈/၅၃၄၃၃၃၃၆ ( ၂၉.၅၃၀၅၈၇၉၅ ) ရက်
  /// အဲဒီ ကိန်းသေကို LM
  var lm = 1577917828 ~/ 53433336;

  ///ဂျုလီယန်ရက်စုစုပေါင်း
  /// ဂျူလီယန် ရက်နံပါတ် ဆိုတာက ဂရီဂိုရီယမ် ပြက္ခဒိန် ၄၇၁၄ BC နိုဝင်ဘာ ၂၄ ရက်နေ့ နေ့လည် မွန်းတည့်ချိန်က စတင်ပြီး ရေတွက်လာတဲ့ ရက်အရေအတွက် စုစုပေါင်းဖြစ်ပါတယ်
  _jdndaynocal() {
    var a = ((14 - _edate.month) ~/ 12);
    var y = (_edate.year + 4800 - a);
    var m = _edate.month + (12 * a) - 3;
    var jdn = _edate.day +
        (((153 * m) + 2) ~/ 5) +
        (365 * y) +
        (y ~/ 4) -
        (y ~/ 100) +
        (y ~/ 400) -
        32045;
    print("test jdn no $jdn");
    return jdn;
  }

  ///ဂျုလီယန် ရက်စွဲ
  ///
  ///ဂျူလီယန် ရက်စွဲ (Julian Date) ဆိုတာကတော့ ဂျူလီယန် ရက်နံပါတ် ကိုပဲ အချိန် နာရီ၊ မိနစ်၊ စက္ကန့် တွေကိုပါ ဒဿမကိန်းပြောင်းပြီး ထည့်တွက်ထားတာပါ
  _jdndate() {
    _jdndaynocal();
    var df = (((_edate.hour) ~/ 24) +
        (_edate.minute ~/ 1440) +
        (_edate.second ~/ 86400));
    var jd = _jdndaynocal() + df;
    print("test jdndate $jd");
    return jd;
  }

  ///ဂျူလီယန်ရက်နံပါတ်မှ မြန်မာရက်သို့..
  ///
  ///ရှာလိုတဲ့မြန်မာသက္ကရဇ် - my
  _jdntommyear() {
    var my = ((_jdndate() - 0.5 - _mo) ~/ _sy);
    return my;
  }

  ///မြန်မာနစ်အစ
  ///
  ///ရှာလိုတဲ့နစ်ရဲ့ - ဂျုလီယန် ရက်တန်ဖိုး - နှစ်ဆန်းချိန်ရဲ့ ဂျူလီယန် ရက်တန်ဖိုး အဖြေ - ja
  ///နှစ်တချို့ရဲ့ သိပြီးသား နှစ်ဆန်းချိန် တွေကို ja မှာ အစားထိုးပြီး၊ ပျမ်းမျှရှာပြီး ခန့်မှန်း တဲ့အခါ MO ကို ဂျူလီယန်ရက်တန်ဖိုး 1954168.050623 - MO
  _jdnmmdaystart() {
    var ja = (_sy * _jdntommyear()) + _mo;
    return ja;
  }

  ///မြန်မာနစ် သင်္ကြန်ကျချိန်.. jk (ဂျုလီယန်)
  ///
  ///နစ်တစ်နစ်၇ဲ့ အစ ကနေ သင်္ကြန်ကျချိန်ကနေ သင်္ကြန်ကျတဲ့ ကာလ ကို နုတ်,,
  ///
  /// မြန်မာ ပြက္ခဒိန် အကြံပေး အဖွဲ့ က အသိအမှတ်ပြုတဲ့ သင်္ကြန်ကာလက ၂.၁၆၉၉၁၈၉၈၂ ရက် (၂ ရက်၊ ၄ နာရီ၊ ၄ မိနစ်၊ ၄၁ စက္ကန့်) ဖြစ်ပြီး၊
  ///
  /// ရှေးမြန်မာ မင်းများ လက်ထက်ကတော့ ၂.၁၆၇၅ ရက် (၂ ရက်၊ ၄ နာရီ၊ ၁ မိနစ်၊ ၁၂ စက္ကန့်) ကို သုံးပါတယ်
  tgmmdaystart() {
    var jk;
    if (_jdntommyear() >= 1312) {
      jk = _jdnmmdaystart() - 2.169918982;
    } else {
      jk = _jdnmmdaystart() - 2.1675;
    }
    return jk;
  }

  _month() {}

  _day() {
    return "စနေနေ့";
  }

  extraday() {
    return 2;
  }

  ///Day now
  ///
  ///လက်၇ှိ၇ောက်နေသာ၇က်ကို အလိုအလျောက်မြန်မာလိုတွက်ချက်ပါသည်
  ///
  ///eng:true (Sasana Year 2564 , Myanmar Year 1382 , Kason waning 3 , Saturday .)
  ///
  ///eng:false or null (စန္ဒမာနှစ် ၂၅၆၄,မြန်မာနှစ် ၁၃၈၂ ,ကဆုန် လပြည့်ကျော် ၃ရက် ,စနေနေ့ )
  String now({bool eng = false}) {
    String year = _jdntommyear();
    String month = _month();
    String day = _day();
    if (eng = false) {
      String date = " $year : $month : $day : $day ";
      return date;
    } else {
      String date = " $year : $month : $day : $day ";
      return date;
    }
  }

  ///လက်၇ှိ၇ောက်နေသောနှစ်
  ///
  ///eng:true (Sasana Year 2564,Myanmar Year 1382)
  ///
  ///eng:false or null (စန္ဒမာနှစ် ၂၅၆၄,မြန်မာနှစ် ၁၃၈၂ )
  String year({bool eng = false}) {
    String year = _jdntommyear();
    return year;
  }

  ///လက်၇ှိ၇ောက်နေသောလ
  ///
  ///ဝါကြီးထပ်လ ၊ ဝါငယ်ထပ်လ ၊ ဝါမထပါသော၇ိုး၇ိုးလ အားဖော်ပြပါသည် ။
  String month() {
    String month = _month();
    return month;
  }

  ///လက်၇ှိမြန်မာ၇က်အား နေ့(နံပါတ်မဟုတ်ပါ)ဖြင့်ဖော်ပြပါသည်
  String day() {
    String day = _day();
    return day;
  }

  String nextday({@required int nettime}) {
    String mmdate = "";
    return mmdate;
  }
}
