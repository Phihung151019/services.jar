.class public abstract Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 18

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "config"

    const/4 v2, 0x0

    invoke-interface {v15, v14, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v13, :cond_1c

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v14, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "type"

    invoke-interface {v15, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v14, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v13, :cond_18

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "supportedFormat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "format"

    invoke-interface {v15, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "descriptor"

    invoke-interface {v15, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_3

    :goto_2
    move v3, v12

    goto/16 :goto_4

    :cond_3
    const/16 v16, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "AUDIO_FORMAT_TRUEHD"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v16, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "AUDIO_FORMAT_DD"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v16, 0xd

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "AUDIO_FORMAT_LPCM"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v16, 0xc

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "AUDIO_FORMAT_MP3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v16, 0xb

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "AUDIO_FORMAT_MAX"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v16, 0xa

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "AUDIO_FORMAT_DTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v16, 0x9

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "AUDIO_FORMAT_DST"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v16, 0x8

    goto/16 :goto_3

    :sswitch_7
    const-string v7, "AUDIO_FORMAT_DDP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v16, 0x7

    goto :goto_3

    :sswitch_8
    const-string v7, "AUDIO_FORMAT_AAC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x6

    goto :goto_3

    :sswitch_9
    const-string v7, "AUDIO_FORMAT_ONEBITAUDIO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v16, v9

    goto :goto_3

    :sswitch_a
    const-string v7, "AUDIO_FORMAT_MPEG2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    move/from16 v16, v10

    goto :goto_3

    :sswitch_b
    const-string v7, "AUDIO_FORMAT_MPEG1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    move/from16 v16, v13

    goto :goto_3

    :sswitch_c
    const-string v7, "AUDIO_FORMAT_DTSHD"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    move/from16 v16, v14

    goto :goto_3

    :sswitch_d
    const-string v7, "AUDIO_FORMAT_ATRAC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_3

    :cond_11
    move/from16 v16, v11

    goto :goto_3

    :sswitch_e
    const-string v7, "AUDIO_FORMAT_WMAPRO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_3

    :cond_12
    move/from16 v16, v12

    :goto_3
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v3, 0xc

    goto :goto_4

    :pswitch_1
    move v3, v14

    goto :goto_4

    :pswitch_2
    move v3, v11

    goto :goto_4

    :pswitch_3
    move v3, v10

    goto :goto_4

    :pswitch_4
    const/16 v3, 0xf

    goto :goto_4

    :pswitch_5
    const/4 v3, 0x7

    goto :goto_4

    :pswitch_6
    const/16 v3, 0xd

    goto :goto_4

    :pswitch_7
    const/16 v3, 0xa

    goto :goto_4

    :pswitch_8
    const/4 v3, 0x6

    goto :goto_4

    :pswitch_9
    const/16 v3, 0x9

    goto :goto_4

    :pswitch_a
    move v3, v9

    goto :goto_4

    :pswitch_b
    move v3, v13

    goto :goto_4

    :pswitch_c
    const/16 v3, 0xb

    goto :goto_4

    :pswitch_d
    const/16 v3, 0x8

    goto :goto_4

    :pswitch_e
    const/16 v3, 0xe

    :goto_4
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_13

    goto :goto_5

    :cond_13
    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    if-eq v7, v13, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SAD byte array length is not 3. Length = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v6

    const-string v8, "HdmiUtils"

    invoke-static {v7, v6, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_14
    :goto_5
    move-object v6, v2

    :cond_15
    if-eqz v3, :cond_16

    if-eqz v6, :cond_16

    new-instance v7, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    invoke-direct {v7, v3, v6}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-interface {v15, v13, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6

    :cond_19
    new-instance v3, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    invoke-direct {v3, v1, v4}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    :cond_1a
    :goto_6
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1b
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto/16 :goto_0

    :cond_1c
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f0fd0ff -> :sswitch_e
        -0x475c657e -> :sswitch_d
        -0x47321a60 -> :sswitch_c
        -0x46b54d13 -> :sswitch_b
        -0x46b54d12 -> :sswitch_a
        -0x156509f0 -> :sswitch_9
        -0x10db57fc -> :sswitch_8
        -0x10db4c4f -> :sswitch_7
        -0x10db4a7a -> :sswitch_6
        -0x10db4a5c -> :sswitch_5
        -0x10db2adb -> :sswitch_4
        -0x10db292f -> :sswitch_3
        -0xa8a6ed3 -> :sswitch_2
        0x7b6dc7f -> :sswitch_1
        0x7c210789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static skip(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

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
