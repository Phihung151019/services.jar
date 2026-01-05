.class public final Lcom/android/server/display/config/BlockingZoneConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public refreshRateThermalThrottlingId:Ljava/lang/String;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 8

    new-instance v0, Lcom/android/server/display/config/BlockingZoneConfig;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_f

    if-eq v1, v3, :cond_f

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "supportedModes"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "defaultRefreshRate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "refreshRateThermalThrottlingId"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "blockingZoneThreshold"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/server/display/config/BlockingZoneThreshold;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v2, :cond_c

    if-eq v5, v3, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "displayBrightnessPoint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_8

    if-eq v6, v3, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "lux"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->lux:Ljava/math/BigInteger;

    goto :goto_2

    :cond_6
    const-string/jumbo v7, "nits"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->nits:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_8
    if-ne v6, v3, :cond_a

    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    :cond_9
    iget-object v6, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayBrightnessPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_c
    if-ne v5, v3, :cond_d

    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BlockingZoneThreshold is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_f
    if-ne v1, v3, :cond_10

    return-object v0

    :cond_10
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BlockingZoneConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
