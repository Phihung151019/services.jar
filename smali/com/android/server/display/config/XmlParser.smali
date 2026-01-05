.class public abstract Lcom/android/server/display/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 14

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "displayConfiguration"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d1

    new-instance p0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v2, :cond_cf

    if-eq v3, v4, :cond_cf

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "densityMapping"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v3, Lcom/android/server/display/config/DensityMapping;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_b

    if-eq v6, v4, :cond_b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "density"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/android/server/display/config/Density;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_7

    if-eq v8, v4, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/server/display/config/Density;->width:Ljava/math/BigInteger;

    goto :goto_2

    :cond_4
    const-string/jumbo v9, "height"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/server/display/config/Density;->height:Ljava/math/BigInteger;

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/server/display/config/Density;->density:Ljava/math/BigInteger;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    if-ne v8, v4, :cond_9

    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    if-nez v7, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    :cond_8
    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Density is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_b
    if-ne v6, v4, :cond_c

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DensityMapping is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string/jumbo v6, "screenBrightnessMap"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "screenBrightnessDefault"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "thermalThrottling"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "refreshRateRange"

    const-string/jumbo v8, "thermalStatus"

    const-string/jumbo v9, "id"

    if-eqz v6, :cond_2d

    new-instance v3, Lcom/android/server/display/config/ThermalThrottling;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_2b

    if-eq v6, v4, :cond_2b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_10

    goto :goto_3

    :cond_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "brightnessThrottlingMap"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    new-instance v6, Lcom/android/server/display/config/BrightnessThrottlingMap;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    iput-object v10, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->id:Ljava/lang/String;

    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v2, :cond_1a

    if-eq v10, v4, :cond_1a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v5, :cond_12

    goto :goto_4

    :cond_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "brightnessThrottlingPoint"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    new-instance v10, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v2, :cond_16

    if-eq v11, v4, :cond_16

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-eq v11, v5, :cond_13

    goto :goto_5

    :cond_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    goto :goto_5

    :cond_14
    const-string/jumbo v12, "brightness"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/math/BigDecimal;

    invoke-direct {v12, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v12, v10, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    goto :goto_5

    :cond_15
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_16
    if-ne v11, v4, :cond_18

    iget-object v11, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    if-nez v11, :cond_17

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    :cond_17
    iget-object v11, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BrightnessThrottlingPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_1a
    if-ne v10, v4, :cond_1c

    iget-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    if-nez v10, :cond_1b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    :cond_1b
    iget-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BrightnessThrottlingMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    const-string/jumbo v10, "refreshRateThrottlingMap"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    new-instance v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e

    iput-object v10, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->id:Ljava/lang/String;

    :cond_1e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v2, :cond_27

    if-eq v10, v4, :cond_27

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v5, :cond_1f

    goto :goto_6

    :cond_1f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "refreshRateThrottlingPoint"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    new-instance v10, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v2, :cond_23

    if-eq v11, v4, :cond_23

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-eq v11, v5, :cond_20

    goto :goto_7

    :cond_20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    goto :goto_7

    :cond_21
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    goto :goto_7

    :cond_22
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    :cond_23
    if-ne v11, v4, :cond_25

    iget-object v11, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    if-nez v11, :cond_24

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    :cond_24
    iget-object v11, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_25
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "RefreshRateThrottlingPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_27
    if-ne v10, v4, :cond_29

    iget-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    if-nez v10, :cond_28

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    :cond_28
    iget-object v10, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_29
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "RefreshRateThrottlingMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    :cond_2b
    if-ne v6, v4, :cond_2c

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    goto/16 :goto_0

    :cond_2c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "ThermalThrottling is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    const-string/jumbo v6, "powerThrottlingConfig"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v3, Lcom/android/server/display/config/PowerThrottlingConfig;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_40

    if-eq v6, v4, :cond_40

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_2e

    goto :goto_8

    :cond_2e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "brightnessLowestCapAllowed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    goto :goto_8

    :cond_2f
    const-string/jumbo v7, "customAnimationRate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->customAnimationRate:Ljava/math/BigDecimal;

    goto :goto_8

    :cond_30
    const-string/jumbo v7, "pollingWindowMaxMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMaxMillis:Ljava/math/BigInteger;

    goto :goto_8

    :cond_31
    const-string/jumbo v7, "pollingWindowMinMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMinMillis:Ljava/math/BigInteger;

    goto :goto_8

    :cond_32
    const-string/jumbo v7, "powerThrottlingMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    new-instance v6, Lcom/android/server/display/config/PowerThrottlingMap;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_33

    iput-object v7, v6, Lcom/android/server/display/config/PowerThrottlingMap;->id:Ljava/lang/String;

    :cond_33
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_3c

    if-eq v7, v4, :cond_3c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_34

    goto :goto_9

    :cond_34
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "powerThrottlingPoint"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    new-instance v7, Lcom/android/server/display/config/PowerThrottlingPoint;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v2, :cond_38

    if-eq v10, v4, :cond_38

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v5, :cond_35

    goto :goto_a

    :cond_35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    goto :goto_a

    :cond_36
    const-string/jumbo v11, "powerQuotaMilliWatts"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v11, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->powerQuotaMilliWatts:Ljava/math/BigDecimal;

    goto :goto_a

    :cond_37
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    :cond_38
    if-ne v10, v4, :cond_3a

    iget-object v10, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    if-nez v10, :cond_39

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    :cond_39
    iget-object v10, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "PowerThrottlingPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    :cond_3c
    if-ne v7, v4, :cond_3e

    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    if-nez v7, :cond_3d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    :cond_3d
    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_3e
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "PowerThrottlingMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_40
    if-ne v6, v4, :cond_41

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    goto/16 :goto_0

    :cond_41
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "PowerThrottlingConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    const-string/jumbo v6, "luxThrottling"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v8, "map"

    if-eqz v6, :cond_4d

    new-instance v3, Lcom/android/server/display/config/LuxThrottling;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_4b

    if-eq v6, v4, :cond_4b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_43

    goto :goto_b

    :cond_43
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "brightnessLimitMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    new-instance v6, Lcom/android/server/display/config/BrightnessLimitMap;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_47

    if-eq v7, v4, :cond_47

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_44

    goto :goto_c

    :cond_44
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    goto :goto_c

    :cond_45
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto :goto_c

    :cond_46
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_47
    if-ne v7, v4, :cond_49

    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    if-nez v7, :cond_48

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    :cond_48
    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_49
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BrightnessLimitMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b

    :cond_4b
    if-ne v6, v4, :cond_4c

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    goto/16 :goto_0

    :cond_4c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "LuxThrottling is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    const-string/jumbo v6, "highBrightnessMode"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v10, "sdrHdrRatioMap"

    const-string/jumbo v11, "allowInLowPowerMode"

    const-string/jumbo v12, "refreshRate"

    const-string/jumbo v13, "enabled"

    if-eqz v6, :cond_68

    new-instance v3, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4e

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    :cond_4e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_66

    if-eq v6, v4, :cond_66

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_4f

    goto :goto_d

    :cond_4f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "transitionPoint"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    goto :goto_d

    :cond_50
    const-string/jumbo v7, "minimumLux"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    goto :goto_d

    :cond_51
    const-string/jumbo v7, "timing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    new-instance v6, Lcom/android/server/display/config/HbmTiming;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_56

    if-eq v7, v4, :cond_56

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_52

    goto :goto_e

    :cond_52
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "timeWindowSecs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    goto :goto_e

    :cond_53
    const-string/jumbo v8, "timeMaxSecs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    goto :goto_e

    :cond_54
    const-string/jumbo v8, "timeMinSecs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    goto :goto_e

    :cond_55
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_56
    if-ne v7, v4, :cond_57

    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    goto/16 :goto_d

    :cond_57
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HbmTiming is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    goto/16 :goto_d

    :cond_59
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    goto/16 :goto_d

    :cond_5a
    const-string/jumbo v7, "minimumHdrPercentOfScreen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    goto/16 :goto_d

    :cond_5b
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v6, Lcom/android/server/display/config/SdrHdrRatioMap;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_63

    if-eq v7, v4, :cond_63

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_5c

    goto :goto_f

    :cond_5c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "point"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    new-instance v7, Lcom/android/server/display/config/SdrHdrRatioPoint;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_60

    if-eq v8, v4, :cond_60

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v5, :cond_5d

    goto :goto_10

    :cond_5d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "sdrNits"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v9, v7, Lcom/android/server/display/config/SdrHdrRatioPoint;->sdrNits:Ljava/math/BigDecimal;

    goto :goto_10

    :cond_5e
    const-string/jumbo v9, "hdrRatio"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v9, v7, Lcom/android/server/display/config/SdrHdrRatioPoint;->hdrRatio:Ljava/math/BigDecimal;

    goto :goto_10

    :cond_5f
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    :cond_60
    if-ne v8, v4, :cond_61

    invoke-virtual {v6}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_61
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "SdrHdrRatioPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_63
    if-ne v7, v4, :cond_64

    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    goto/16 :goto_d

    :cond_64
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "SdrHdrRatioMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d

    :cond_66
    if-ne v6, v4, :cond_67

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    goto/16 :goto_0

    :cond_67
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HighBrightnessMode is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    const-string/jumbo v6, "hdrBrightnessConfig"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    new-instance v3, Lcom/android/server/display/config/HdrBrightnessConfig;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_73

    if-eq v6, v4, :cond_73

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_69

    goto :goto_11

    :cond_69
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "brightnessMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto :goto_11

    :cond_6a
    const-string/jumbo v7, "brightnessIncreaseDebounceMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    goto :goto_11

    :cond_6b
    const-string/jumbo v7, "brightnessDecreaseDebounceMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    goto :goto_11

    :cond_6c
    const-string/jumbo v7, "screenBrightnessRampIncrease"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_6d
    const-string/jumbo v7, "screenBrightnessRampDecrease"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_6e
    const-string/jumbo v7, "minimumHdrPercentOfScreenForNbm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    goto/16 :goto_11

    :cond_6f
    const-string/jumbo v7, "minimumHdrPercentOfScreenForHbm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    goto/16 :goto_11

    :cond_70
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    goto/16 :goto_11

    :cond_71
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto/16 :goto_11

    :cond_72
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_11

    :cond_73
    if-ne v6, v4, :cond_74

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    goto/16 :goto_0

    :cond_74
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HdrBrightnessConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    const-string/jumbo v6, "quirks"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    new-instance v3, Lcom/android/server/display/config/DisplayQuirks;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_79

    if-eq v6, v4, :cond_79

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_76

    goto :goto_12

    :cond_76
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "quirk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    if-nez v7, :cond_77

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    :cond_77
    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_78
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    :cond_79
    if-ne v6, v4, :cond_7a

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    goto/16 :goto_0

    :cond_7a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayQuirks is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    const-string/jumbo v6, "autoBrightness"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    new-instance v3, Lcom/android/server/display/config/AutoBrightness;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7c

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    :cond_7c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_8a

    if-eq v6, v4, :cond_8a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_7d

    goto :goto_13

    :cond_7d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "brighteningLightDebounceMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    goto :goto_13

    :cond_7e
    const-string/jumbo v7, "darkeningLightDebounceMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    goto :goto_13

    :cond_7f
    const-string/jumbo v7, "brighteningLightDebounceIdleMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    goto :goto_13

    :cond_80
    const-string/jumbo v7, "darkeningLightDebounceIdleMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    goto :goto_13

    :cond_81
    const-string/jumbo v7, "luxToBrightnessMapping"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    new-instance v6, Lcom/android/server/display/config/LuxToBrightnessMapping;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_86

    if-eq v7, v4, :cond_86

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_82

    goto :goto_14

    :cond_82
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto :goto_14

    :cond_83
    const-string/jumbo v9, "mode"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessModeName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    goto :goto_14

    :cond_84
    const-string/jumbo v9, "setting"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessSettingName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessSettingName;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    goto :goto_14

    :cond_85
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_14

    :cond_86
    if-ne v7, v4, :cond_87

    invoke-virtual {v3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_87
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "LuxToBrightnessMapping is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    const-string/jumbo v7, "idleStylusTimeoutMillis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->idleStylusTimeoutMillis:Ljava/math/BigInteger;

    goto/16 :goto_13

    :cond_89
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_13

    :cond_8a
    if-ne v6, v4, :cond_8b

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    goto/16 :goto_0

    :cond_8b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "AutoBrightness is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    new-instance v3, Lcom/android/server/display/config/RefreshRateConfigs;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_a0

    if-eq v6, v4, :cond_a0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_8d

    goto :goto_15

    :cond_8d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "defaultRefreshRate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    goto :goto_15

    :cond_8e
    const-string/jumbo v8, "defaultPeakRefreshRate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    goto :goto_15

    :cond_8f
    const-string/jumbo v8, "refreshRateZoneProfiles"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    new-instance v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_98

    if-eq v8, v4, :cond_98

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v5, :cond_90

    goto :goto_16

    :cond_90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "refreshRateZoneProfile"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    new-instance v8, Lcom/android/server/display/config/RefreshRateZone;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_91

    iput-object v10, v8, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    :cond_91
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v2, :cond_94

    if-eq v10, v4, :cond_94

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v5, :cond_92

    goto :goto_17

    :cond_92
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    goto :goto_17

    :cond_93
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_94
    if-ne v10, v4, :cond_96

    iget-object v10, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    if-nez v10, :cond_95

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    :cond_95
    iget-object v10, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_96
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "RefreshRateZone is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_16

    :cond_98
    if-ne v8, v4, :cond_99

    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    goto/16 :goto_15

    :cond_99
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "RefreshRateZoneProfiles is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    const-string/jumbo v8, "defaultRefreshRateInHbmHdr"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    goto/16 :goto_15

    :cond_9b
    const-string/jumbo v8, "defaultRefreshRateInHbmSunlight"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    goto/16 :goto_15

    :cond_9c
    const-string/jumbo v8, "lowerBlockingZoneConfigs"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    goto/16 :goto_15

    :cond_9d
    const-string/jumbo v8, "higherBlockingZoneConfigs"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    goto/16 :goto_15

    :cond_9e
    const-string/jumbo v8, "lowPowerSupportedModes"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    goto/16 :goto_15

    :cond_9f
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_15

    :cond_a0
    if-ne v6, v4, :cond_a1

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    goto/16 :goto_0

    :cond_a1
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "RefreshRateConfigs is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    const-string/jumbo v6, "screenBrightnessRampFastDecrease"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a3
    const-string/jumbo v6, "screenBrightnessRampFastIncrease"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a4
    const-string/jumbo v6, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a5
    const-string/jumbo v6, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a6
    const-string/jumbo v6, "screenBrightnessRampSlowDecreaseIdle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a7
    const-string/jumbo v6, "screenBrightnessRampSlowIncreaseIdle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_a8
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxMillis"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_a9
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxMillis"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_aa
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxIdleMillis"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_ab
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxIdleMillis"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_ac
    const-string/jumbo v6, "lightSensor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    goto/16 :goto_0

    :cond_ad
    const-string/jumbo v6, "screenOffBrightnessSensor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    goto/16 :goto_0

    :cond_ae
    const-string/jumbo v6, "proxSensor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    if-nez v4, :cond_af

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    :cond_af
    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b0
    const-string/jumbo v6, "tempSensor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    goto/16 :goto_0

    :cond_b1
    const-string/jumbo v6, "ambientLightHorizonLong"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_b2
    const-string/jumbo v6, "ambientLightHorizonShort"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_b3
    const-string/jumbo v6, "displayBrightnessChangeThresholds"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    goto/16 :goto_0

    :cond_b4
    const-string/jumbo v6, "ambientBrightnessChangeThresholds"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    goto/16 :goto_0

    :cond_b5
    const-string/jumbo v6, "displayBrightnessChangeThresholdsIdle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    goto/16 :goto_0

    :cond_b6
    const-string/jumbo v6, "ambientBrightnessChangeThresholdsIdle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    goto/16 :goto_0

    :cond_b7
    const-string/jumbo v6, "screenOffBrightnessSensorValueToLux"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "item"

    if-eqz v6, :cond_bd

    new-instance v3, Lcom/android/server/display/config/IntegerArray;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_18
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_bb

    if-eq v6, v4, :cond_bb

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_b8

    goto :goto_18

    :cond_b8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    if-nez v6, :cond_b9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    :cond_b9
    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_ba
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_18

    :cond_bb
    if-ne v6, v4, :cond_bc

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    goto/16 :goto_0

    :cond_bc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "IntegerArray is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    const-string/jumbo v6, "usiVersion"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    new-instance v3, Lcom/android/server/display/config/UsiVersion;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_c1

    if-eq v6, v4, :cond_c1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_be

    goto :goto_19

    :cond_be
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "majorVersion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bf

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    goto :goto_19

    :cond_bf
    const-string/jumbo v7, "minorVersion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    goto :goto_19

    :cond_c0
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    :cond_c1
    if-ne v6, v4, :cond_c2

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    goto/16 :goto_0

    :cond_c2
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "UsiVersion is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c3
    const-string/jumbo v6, "evenDimmer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    invoke-static {v0}, Lcom/android/server/display/config/EvenDimmerMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/EvenDimmerMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    goto/16 :goto_0

    :cond_c4
    const-string/jumbo v6, "screenBrightnessCapForWearBedtimeMode"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_c5
    const-string/jumbo v6, "idleScreenRefreshRateTimeout"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-static {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    goto/16 :goto_0

    :cond_c6
    const-string/jumbo v6, "supportsVrr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_c7
    const-string/jumbo v6, "dozeBrightnessSensorValueToBrightness"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v3, Lcom/android/server/display/config/FloatArray;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_cb

    if-eq v6, v4, :cond_cb

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_c8

    goto :goto_1a

    :cond_c8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/display/config/FloatArray;->item:Ljava/util/List;

    if-nez v6, :cond_c9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/android/server/display/config/FloatArray;->item:Ljava/util/List;

    :cond_c9
    iget-object v6, v3, Lcom/android/server/display/config/FloatArray;->item:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_ca
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a

    :cond_cb
    if-ne v6, v4, :cond_cc

    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    goto/16 :goto_0

    :cond_cc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "FloatArray is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cd
    const-string/jumbo v4, "defaultDozeBrightness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_ce
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_cf
    if-ne v3, v4, :cond_d0

    return-object p0

    :cond_d0
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayConfiguration is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d1
    return-object v1
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-object v0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
