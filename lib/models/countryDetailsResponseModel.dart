// To parse this JSON data, do
//
//     final countryDetailsResponse = countryDetailsResponseFromJson(jsonString);

import 'dart:convert';

List<CountryDetailsResponse> countryDetailsResponseFromJson(String str) => List<CountryDetailsResponse>.from(json.decode(str).map((x) => CountryDetailsResponse.fromJson(x)));

String countryDetailsResponseToJson(List<CountryDetailsResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryDetailsResponse {
    CountryDetailsResponse({
        this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.area,
        this.demonyms,
        this.flag,
        this.maps,
        this.population,
        this.gini,
        this.fifa,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo,
        this.postalCode,
        this.borders,
    });

    Name name;
    List<String> tld;
    String cca2;
    String ccn3;
    String cca3;
    String cioc;
    bool independent;
    Status status;
    bool unMember;
    Currencies currencies;
    Idd idd;
    List<String> capital;
    List<String> altSpellings;
    Region region;
    String subregion;
    Map<String, String> languages;
    Map<String, Translation> translations;
    List<double> latlng;
    bool landlocked;
    double area;
    Demonyms demonyms;
    String flag;
    Maps maps;
    int population;
    Map<String, double> gini;
    String fifa;
    Car car;
    List<String> timezones;
    List<Continent> continents;
    CoatOfArms flags;
    CoatOfArms coatOfArms;
    StartOfWeek startOfWeek;
    CapitalInfo capitalInfo;
    PostalCode postalCode;
    List<String> borders;

    factory CountryDetailsResponse.fromJson(Map<String, dynamic> json) => CountryDetailsResponse(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null ? null : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"] == null ? null : json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"] == null ? null : json["cioc"],
        independent: json["independent"] == null ? null : json["independent"],
        status: statusValues.map[json["status"]],
        unMember: json["unMember"],
        currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null ? null : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: regionValues.map[json["region"]],
        subregion: json["subregion"] == null ? null : json["subregion"],
        languages: json["languages"] == null ? null : Map.from(json["languages"]).map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"].toDouble(),
        demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"] == null ? null : json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: json["gini"] == null ? null : Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        fifa: json["fifa"] == null ? null : json["fifa"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<Continent>.from(json["continents"].map((x) => continentValues.map[x])),
        flags: CoatOfArms.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: startOfWeekValues.map[json["startOfWeek"]],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
        borders: json["borders"] == null ? null : List<String>.from(json["borders"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": tld == null ? null : List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3 == null ? null : ccn3,
        "cca3": cca3,
        "cioc": cioc == null ? null : cioc,
        "independent": independent == null ? null : independent,
        "status": statusValues.reverse[status],
        "unMember": unMember,
        "currencies": currencies == null ? null : currencies.toJson(),
        "idd": idd.toJson(),
        "capital": capital == null ? null : List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": regionValues.reverse[region],
        "subregion": subregion == null ? null : subregion,
        "languages": languages == null ? null : Map.from(languages).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms == null ? null : demonyms.toJson(),
        "flag": flag == null ? null : flag,
        "maps": maps.toJson(),
        "population": population,
        "gini": gini == null ? null : Map.from(gini).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "fifa": fifa == null ? null : fifa,
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => continentValues.reverse[x])),
        "flags": flags.toJson(),
        "coatOfArms": coatOfArms.toJson(),
        "startOfWeek": startOfWeekValues.reverse[startOfWeek],
        "capitalInfo": capitalInfo.toJson(),
        "postalCode": postalCode == null ? null : postalCode.toJson(),
        "borders": borders == null ? null : List<dynamic>.from(borders.map((x) => x)),
    };
}

class CapitalInfo {
    CapitalInfo({
        this.latlng,
    });

    List<double> latlng;

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "latlng": latlng == null ? null : List<dynamic>.from(latlng.map((x) => x)),
    };
}

class Car {
    Car({
        this.signs,
        this.side,
    });

    List<String> signs;
    Side side;

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null ? null : List<String>.from(json["signs"].map((x) => x)),
        side: sideValues.map[json["side"]],
    );

    Map<String, dynamic> toJson() => {
        "signs": signs == null ? null : List<dynamic>.from(signs.map((x) => x)),
        "side": sideValues.reverse[side],
    };
}

enum Side { LEFT, RIGHT }

final sideValues = EnumValues({
    "left": Side.LEFT,
    "right": Side.RIGHT
});

class CoatOfArms {
    CoatOfArms({
        this.png,
        this.svg,
    });

    String png;
    String svg;

    factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"] == null ? null : json["png"],
        svg: json["svg"] == null ? null : json["svg"],
    );

    Map<String, dynamic> toJson() => {
        "png": png == null ? null : png,
        "svg": svg == null ? null : svg,
    };
}

enum Continent { EUROPE, OCEANIA, AFRICA, ASIA, NORTH_AMERICA, ANTARCTICA, SOUTH_AMERICA }

final continentValues = EnumValues({
    "Africa": Continent.AFRICA,
    "Antarctica": Continent.ANTARCTICA,
    "Asia": Continent.ASIA,
    "Europe": Continent.EUROPE,
    "North America": Continent.NORTH_AMERICA,
    "Oceania": Continent.OCEANIA,
    "South America": Continent.SOUTH_AMERICA
});

class Currencies {
    Currencies({
        this.eur,
        this.sek,
        this.xpf,
        this.xof,
        this.bam,
        this.jod,
        this.usd,
        this.dkk,
        this.irr,
        this.lsl,
        this.zar,
        this.mga,
        this.mur,
        this.szl,
        this.sbd,
        this.mwk,
        this.bwp,
        this.djf,
        this.xaf,
        this.bbd,
        this.ang,
        this.rwf,
        this.gbp,
        this.jep,
        this.yer,
        this.brl,
        this.dzd,
        this.kzt,
        this.fjd,
        this.pkr,
        this.shp,
        this.gel,
        this.nad,
        this.nok,
        this.aud,
        this.chf,
        this.inr,
        this.hkd,
        this.xcd,
        this.cop,
        this.iqd,
        this.mad,
        this.lyd,
        this.sll,
        this.ckd,
        this.nzd,
        this.hrk,
        this.tmt,
        this.btn,
        this.jpy,
        this.mop,
        this.syp,
        this.gmd,
        this.fok,
        this.cad,
        this.egp,
        this.pgk,
        this.czk,
        this.bhd,
        this.uzs,
        this.huf,
        this.zmw,
        this.thb,
        this.mkd,
        this.sos,
        this.rub,
        this.bif,
        this.ils,
        this.myr,
        this.tzs,
        this.kwd,
        this.ngn,
        this.cve,
        this.aoa,
        this.pen,
        this.ghs,
        this.mzn,
        this.kid,
        this.pyg,
        this.bzd,
        this.amd,
        this.aed,
        this.pln,
        this.bob,
        this.clp,
        this.bdt,
        this.mxn,
        this.mnt,
        this.cuc,
        this.cup,
        this.afn,
        this.uyu,
        this.byn,
        this.cdf,
        this.mru,
        this.gip,
        this.azn,
        this.htg,
        this.dop,
        this.sgd,
        this.ars,
        this.isk,
        this.jmd,
        this.qar,
        this.omr,
        this.ron,
        this.ttd,
        this.mvr,
        this.ssp,
        this.awg,
        this.fkp,
        this.stn,
        this.pab,
        this.all,
        this.hnl,
        this.kpw,
        this.kes,
        this.lkr,
        this.lbp,
        this.kmf,
        this.twd,
        this.kyd,
        this.nio,
        this.bgn,
        this.tvd,
        this.lak,
        this.bnd,
        this.ggp,
        this.npr,
        this.crc,
        this.khr,
        this.sar,
        this.gnf,
        this.ern,
        this.krw,
        this.rsd,
        this.top,
        this.ves,
        this.kgs,
        this.sdg,
        this.uah,
        this.vuv,
        this.bmd,
        this.tnd,
        this.idr,
        this.ugx,
        this.imp,
        this.mmk,
        this.cny,
        this.scr,
        this.zwl,
        this.etb,
        this.gtq,
        this.lrd,
        this.mdl,
        this.srd,
        this.bsd,
        this.vnd,
        this.wst,
        this.tjs,
        this.php,
        this.gyd,
        this.currenciesTry,
    });

    Aed eur;
    Aed sek;
    Aed xpf;
    Aed xof;
    Bam bam;
    Aed jod;
    Aed usd;
    Aed dkk;
    Aed irr;
    Aed lsl;
    Aed zar;
    Aed mga;
    Aed mur;
    Aed szl;
    Aed sbd;
    Aed mwk;
    Aed bwp;
    Aed djf;
    Aed xaf;
    Aed bbd;
    Aed ang;
    Aed rwf;
    Aed gbp;
    Aed jep;
    Aed yer;
    Aed brl;
    Aed dzd;
    Aed kzt;
    Aed fjd;
    Aed pkr;
    Aed shp;
    Aed gel;
    Aed nad;
    Aed nok;
    Aed aud;
    Aed chf;
    Aed inr;
    Aed hkd;
    Aed xcd;
    Aed cop;
    Aed iqd;
    Aed mad;
    Aed lyd;
    Aed sll;
    Aed ckd;
    Aed nzd;
    Aed hrk;
    Aed tmt;
    Aed btn;
    Aed jpy;
    Aed mop;
    Aed syp;
    Aed gmd;
    Aed fok;
    Aed cad;
    Aed egp;
    Aed pgk;
    Aed czk;
    Aed bhd;
    Aed uzs;
    Aed huf;
    Aed zmw;
    Aed thb;
    Aed mkd;
    Aed sos;
    Aed rub;
    Aed bif;
    Aed ils;
    Aed myr;
    Aed tzs;
    Aed kwd;
    Aed ngn;
    Aed cve;
    Aed aoa;
    Aed pen;
    Aed ghs;
    Aed mzn;
    Aed kid;
    Aed pyg;
    Aed bzd;
    Aed amd;
    Aed aed;
    Aed pln;
    Aed bob;
    Aed clp;
    Aed bdt;
    Aed mxn;
    Aed mnt;
    Aed cuc;
    Aed cup;
    Aed afn;
    Aed uyu;
    Aed byn;
    Aed cdf;
    Aed mru;
    Aed gip;
    Aed azn;
    Aed htg;
    Aed dop;
    Aed sgd;
    Aed ars;
    Aed isk;
    Aed jmd;
    Aed qar;
    Aed omr;
    Aed ron;
    Aed ttd;
    Aed mvr;
    Aed ssp;
    Aed awg;
    Aed fkp;
    Aed stn;
    Aed pab;
    Aed all;
    Aed hnl;
    Aed kpw;
    Aed kes;
    Aed lkr;
    Aed lbp;
    Aed kmf;
    Aed twd;
    Aed kyd;
    Aed nio;
    Aed bgn;
    Aed tvd;
    Aed lak;
    Aed bnd;
    Aed ggp;
    Aed npr;
    Aed crc;
    Aed khr;
    Aed sar;
    Aed gnf;
    Aed ern;
    Aed krw;
    Aed rsd;
    Aed top;
    Aed ves;
    Aed kgs;
    Bam sdg;
    Aed uah;
    Aed vuv;
    Aed bmd;
    Aed tnd;
    Aed idr;
    Aed ugx;
    Aed imp;
    Aed mmk;
    Aed cny;
    Aed scr;
    Aed zwl;
    Aed etb;
    Aed gtq;
    Aed lrd;
    Aed mdl;
    Aed srd;
    Aed bsd;
    Aed vnd;
    Aed wst;
    Aed tjs;
    Aed php;
    Aed gyd;
    Aed currenciesTry;

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
    );

    Map<String, dynamic> toJson() => {
        "EUR": eur == null ? null : eur.toJson(),
        "SEK": sek == null ? null : sek.toJson(),
        "XPF": xpf == null ? null : xpf.toJson(),
        "XOF": xof == null ? null : xof.toJson(),
        "BAM": bam == null ? null : bam.toJson(),
        "JOD": jod == null ? null : jod.toJson(),
        "USD": usd == null ? null : usd.toJson(),
        "DKK": dkk == null ? null : dkk.toJson(),
        "IRR": irr == null ? null : irr.toJson(),
        "LSL": lsl == null ? null : lsl.toJson(),
        "ZAR": zar == null ? null : zar.toJson(),
        "MGA": mga == null ? null : mga.toJson(),
        "MUR": mur == null ? null : mur.toJson(),
        "SZL": szl == null ? null : szl.toJson(),
        "SBD": sbd == null ? null : sbd.toJson(),
        "MWK": mwk == null ? null : mwk.toJson(),
        "BWP": bwp == null ? null : bwp.toJson(),
        "DJF": djf == null ? null : djf.toJson(),
        "XAF": xaf == null ? null : xaf.toJson(),
        "BBD": bbd == null ? null : bbd.toJson(),
        "ANG": ang == null ? null : ang.toJson(),
        "RWF": rwf == null ? null : rwf.toJson(),
        "GBP": gbp == null ? null : gbp.toJson(),
        "JEP": jep == null ? null : jep.toJson(),
        "YER": yer == null ? null : yer.toJson(),
        "BRL": brl == null ? null : brl.toJson(),
        "DZD": dzd == null ? null : dzd.toJson(),
        "KZT": kzt == null ? null : kzt.toJson(),
        "FJD": fjd == null ? null : fjd.toJson(),
        "PKR": pkr == null ? null : pkr.toJson(),
        "SHP": shp == null ? null : shp.toJson(),
        "GEL": gel == null ? null : gel.toJson(),
        "NAD": nad == null ? null : nad.toJson(),
        "NOK": nok == null ? null : nok.toJson(),
        "AUD": aud == null ? null : aud.toJson(),
        "CHF": chf == null ? null : chf.toJson(),
        "INR": inr == null ? null : inr.toJson(),
        "HKD": hkd == null ? null : hkd.toJson(),
        "XCD": xcd == null ? null : xcd.toJson(),
        "COP": cop == null ? null : cop.toJson(),
        "IQD": iqd == null ? null : iqd.toJson(),
        "MAD": mad == null ? null : mad.toJson(),
        "LYD": lyd == null ? null : lyd.toJson(),
        "SLL": sll == null ? null : sll.toJson(),
        "CKD": ckd == null ? null : ckd.toJson(),
        "NZD": nzd == null ? null : nzd.toJson(),
        "HRK": hrk == null ? null : hrk.toJson(),
        "TMT": tmt == null ? null : tmt.toJson(),
        "BTN": btn == null ? null : btn.toJson(),
        "JPY": jpy == null ? null : jpy.toJson(),
        "MOP": mop == null ? null : mop.toJson(),
        "SYP": syp == null ? null : syp.toJson(),
        "GMD": gmd == null ? null : gmd.toJson(),
        "FOK": fok == null ? null : fok.toJson(),
        "CAD": cad == null ? null : cad.toJson(),
        "EGP": egp == null ? null : egp.toJson(),
        "PGK": pgk == null ? null : pgk.toJson(),
        "CZK": czk == null ? null : czk.toJson(),
        "BHD": bhd == null ? null : bhd.toJson(),
        "UZS": uzs == null ? null : uzs.toJson(),
        "HUF": huf == null ? null : huf.toJson(),
        "ZMW": zmw == null ? null : zmw.toJson(),
        "THB": thb == null ? null : thb.toJson(),
        "MKD": mkd == null ? null : mkd.toJson(),
        "SOS": sos == null ? null : sos.toJson(),
        "RUB": rub == null ? null : rub.toJson(),
        "BIF": bif == null ? null : bif.toJson(),
        "ILS": ils == null ? null : ils.toJson(),
        "MYR": myr == null ? null : myr.toJson(),
        "TZS": tzs == null ? null : tzs.toJson(),
        "KWD": kwd == null ? null : kwd.toJson(),
        "NGN": ngn == null ? null : ngn.toJson(),
        "CVE": cve == null ? null : cve.toJson(),
        "AOA": aoa == null ? null : aoa.toJson(),
        "PEN": pen == null ? null : pen.toJson(),
        "GHS": ghs == null ? null : ghs.toJson(),
        "MZN": mzn == null ? null : mzn.toJson(),
        "KID": kid == null ? null : kid.toJson(),
        "PYG": pyg == null ? null : pyg.toJson(),
        "BZD": bzd == null ? null : bzd.toJson(),
        "AMD": amd == null ? null : amd.toJson(),
        "AED": aed == null ? null : aed.toJson(),
        "PLN": pln == null ? null : pln.toJson(),
        "BOB": bob == null ? null : bob.toJson(),
        "CLP": clp == null ? null : clp.toJson(),
        "BDT": bdt == null ? null : bdt.toJson(),
        "MXN": mxn == null ? null : mxn.toJson(),
        "MNT": mnt == null ? null : mnt.toJson(),
        "CUC": cuc == null ? null : cuc.toJson(),
        "CUP": cup == null ? null : cup.toJson(),
        "AFN": afn == null ? null : afn.toJson(),
        "UYU": uyu == null ? null : uyu.toJson(),
        "BYN": byn == null ? null : byn.toJson(),
        "CDF": cdf == null ? null : cdf.toJson(),
        "MRU": mru == null ? null : mru.toJson(),
        "GIP": gip == null ? null : gip.toJson(),
        "AZN": azn == null ? null : azn.toJson(),
        "HTG": htg == null ? null : htg.toJson(),
        "DOP": dop == null ? null : dop.toJson(),
        "SGD": sgd == null ? null : sgd.toJson(),
        "ARS": ars == null ? null : ars.toJson(),
        "ISK": isk == null ? null : isk.toJson(),
        "JMD": jmd == null ? null : jmd.toJson(),
        "QAR": qar == null ? null : qar.toJson(),
        "OMR": omr == null ? null : omr.toJson(),
        "RON": ron == null ? null : ron.toJson(),
        "TTD": ttd == null ? null : ttd.toJson(),
        "MVR": mvr == null ? null : mvr.toJson(),
        "SSP": ssp == null ? null : ssp.toJson(),
        "AWG": awg == null ? null : awg.toJson(),
        "FKP": fkp == null ? null : fkp.toJson(),
        "STN": stn == null ? null : stn.toJson(),
        "PAB": pab == null ? null : pab.toJson(),
        "ALL": all == null ? null : all.toJson(),
        "HNL": hnl == null ? null : hnl.toJson(),
        "KPW": kpw == null ? null : kpw.toJson(),
        "KES": kes == null ? null : kes.toJson(),
        "LKR": lkr == null ? null : lkr.toJson(),
        "LBP": lbp == null ? null : lbp.toJson(),
        "KMF": kmf == null ? null : kmf.toJson(),
        "TWD": twd == null ? null : twd.toJson(),
        "KYD": kyd == null ? null : kyd.toJson(),
        "NIO": nio == null ? null : nio.toJson(),
        "BGN": bgn == null ? null : bgn.toJson(),
        "TVD": tvd == null ? null : tvd.toJson(),
        "LAK": lak == null ? null : lak.toJson(),
        "BND": bnd == null ? null : bnd.toJson(),
        "GGP": ggp == null ? null : ggp.toJson(),
        "NPR": npr == null ? null : npr.toJson(),
        "CRC": crc == null ? null : crc.toJson(),
        "KHR": khr == null ? null : khr.toJson(),
        "SAR": sar == null ? null : sar.toJson(),
        "GNF": gnf == null ? null : gnf.toJson(),
        "ERN": ern == null ? null : ern.toJson(),
        "KRW": krw == null ? null : krw.toJson(),
        "RSD": rsd == null ? null : rsd.toJson(),
        "TOP": top == null ? null : top.toJson(),
        "VES": ves == null ? null : ves.toJson(),
        "KGS": kgs == null ? null : kgs.toJson(),
        "SDG": sdg == null ? null : sdg.toJson(),
        "UAH": uah == null ? null : uah.toJson(),
        "VUV": vuv == null ? null : vuv.toJson(),
        "BMD": bmd == null ? null : bmd.toJson(),
        "TND": tnd == null ? null : tnd.toJson(),
        "IDR": idr == null ? null : idr.toJson(),
        "UGX": ugx == null ? null : ugx.toJson(),
        "IMP": imp == null ? null : imp.toJson(),
        "MMK": mmk == null ? null : mmk.toJson(),
        "CNY": cny == null ? null : cny.toJson(),
        "SCR": scr == null ? null : scr.toJson(),
        "ZWL": zwl == null ? null : zwl.toJson(),
        "ETB": etb == null ? null : etb.toJson(),
        "GTQ": gtq == null ? null : gtq.toJson(),
        "LRD": lrd == null ? null : lrd.toJson(),
        "MDL": mdl == null ? null : mdl.toJson(),
        "SRD": srd == null ? null : srd.toJson(),
        "BSD": bsd == null ? null : bsd.toJson(),
        "VND": vnd == null ? null : vnd.toJson(),
        "WST": wst == null ? null : wst.toJson(),
        "TJS": tjs == null ? null : tjs.toJson(),
        "PHP": php == null ? null : php.toJson(),
        "GYD": gyd == null ? null : gyd.toJson(),
        "TRY": currenciesTry == null ? null : currenciesTry.toJson(),
    };
}

class Aed {
    Aed({
        this.name,
        this.symbol,
    });

    String name;
    String symbol;

    factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
    };
}

class Bam {
    Bam({
        this.name,
    });

    String name;

    factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}

class Demonyms {
    Demonyms({
        this.eng,
        this.fra,
    });

    Eng eng;
    Eng fra;

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra == null ? null : fra.toJson(),
    };
}

class Eng {
    Eng({
        this.f,
        this.m,
    });

    String f;
    String m;

    factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
    );

    Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
    };
}

class Idd {
    Idd({
        this.root,
        this.suffixes,
    });

    String root;
    List<String> suffixes;

    factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"] == null ? null : json["root"],
        suffixes: json["suffixes"] == null ? null : List<String>.from(json["suffixes"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "root": root == null ? null : root,
        "suffixes": suffixes == null ? null : List<dynamic>.from(suffixes.map((x) => x)),
    };
}

class Maps {
    Maps({
        this.googleMaps,
        this.openStreetMaps,
    });

    String googleMaps;
    String openStreetMaps;

    factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}

class Name {
    Name({
        this.common,
        this.official,
        this.nativeName,
    });

    String common;
    String official;
    Map<String, Translation> nativeName;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null ? null : Map.from(json["nativeName"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName == null ? null : Map.from(nativeName).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class Translation {
    Translation({
        this.official,
        this.common,
    });

    String official;
    String common;

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}

class PostalCode {
    PostalCode({
        this.format,
        this.regex,
    });

    String format;
    String regex;

    factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"] == null ? null : json["regex"],
    );

    Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex == null ? null : regex,
    };
}

enum Region { EUROPE, OCEANIA, AFRICA, ASIA, AMERICAS, ANTARCTIC }

final regionValues = EnumValues({
    "Africa": Region.AFRICA,
    "Americas": Region.AMERICAS,
    "Antarctic": Region.ANTARCTIC,
    "Asia": Region.ASIA,
    "Europe": Region.EUROPE,
    "Oceania": Region.OCEANIA
});

enum StartOfWeek { MONDAY, SUNDAY, TURDAY }

final startOfWeekValues = EnumValues({
    "monday": StartOfWeek.MONDAY,
    "sunday": StartOfWeek.SUNDAY,
    "turday": StartOfWeek.TURDAY
});

enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }

final statusValues = EnumValues({
    "officially-assigned": Status.OFFICIALLY_ASSIGNED,
    "user-assigned": Status.USER_ASSIGNED
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
