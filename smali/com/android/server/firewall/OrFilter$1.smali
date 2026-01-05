.class public final Lcom/android/server/firewall/OrFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 0

    new-instance p0, Lcom/android/server/firewall/OrFilter;

    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    return-object p0
.end method
