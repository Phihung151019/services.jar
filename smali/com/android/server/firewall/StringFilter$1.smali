.class public final Lcom/android/server/firewall/StringFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/firewall/StringFilter$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 7

    sget-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$1;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_e

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x63

    if-eq v5, v6, :cond_a

    const/16 v6, 0x65

    if-eq v5, v6, :cond_8

    const/16 v6, 0x69

    if-eq v5, v6, :cond_6

    const/16 v6, 0x70

    if-eq v5, v6, :cond_4

    const/16 v6, 0x72

    if-eq v5, v6, :cond_2

    const/16 v6, 0x73

    if-eq v5, v6, :cond_0

    :goto_1
    move-object v4, v0

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v5, "startsWith"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "regex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/server/firewall/StringFilter$RegexFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "pattern"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "isNull"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "equals"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    new-instance v4, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v5, "contains"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    new-instance v4, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    :goto_2
    if-eqz v4, :cond_d

    if-nez v3, :cond_c

    move-object v3, v4

    goto :goto_3

    :cond_c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p1, "Multiple string filter attributes found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    if-nez v3, :cond_f

    new-instance p1, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-direct {p1, p0}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    return-object p1

    :cond_f
    return-object v3
.end method
