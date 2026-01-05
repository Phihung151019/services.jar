.class public final Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->getCountryZonesFinder()Lcom/android/i18n/timezone/CountryZonesFinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/CountryZonesFinder;->findCanonicalTimeZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method
