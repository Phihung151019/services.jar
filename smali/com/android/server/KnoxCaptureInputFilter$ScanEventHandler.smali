.class public final Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final activeScanInput:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/KnoxCaptureInputFilter;

.field public final unicodeCodepoint:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x353

    if-eq v2, v3, :cond_2d

    const/16 p1, 0x354

    if-eq v2, p1, :cond_0

    goto/16 :goto_a

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_1
    iget-object v5, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-ge v4, v3, :cond_29

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v4, v1

    check-cast v7, Landroid/view/KeyEvent;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x90

    const/4 v11, 0x4

    if-lt v9, v10, :cond_5

    const/16 v10, 0x99

    if-gt v9, v10, :cond_5

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const-string v7, "\u0000"

    goto :goto_0

    :pswitch_0
    const-string v7, "9"

    goto :goto_0

    :pswitch_1
    const-string v7, "8"

    goto :goto_0

    :pswitch_2
    const-string v7, "7"

    goto :goto_0

    :pswitch_3
    const-string v7, "6"

    goto :goto_0

    :pswitch_4
    const-string v7, "5"

    goto :goto_0

    :pswitch_5
    const-string v7, "4"

    goto :goto_0

    :pswitch_6
    const-string v7, "3"

    goto :goto_0

    :pswitch_7
    const-string v7, "2"

    goto :goto_0

    :pswitch_8
    const-string v7, "1"

    goto :goto_0

    :pswitch_9
    const-string v7, "0"

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v11, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    array-length v8, v7

    new-array v8, v8, [B

    array-length v9, v7

    move v10, v0

    move v11, v10

    :goto_1
    if-ge v10, v9, :cond_3

    aget-char v12, v7, v10

    add-int/lit8 v13, v11, 0x1

    int-to-byte v12, v12

    aput-byte v12, v8, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v10, v1

    move v11, v13

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_3
    move-object v6, v8

    goto :goto_3

    :goto_2
    sget v8, Lcom/android/server/KnoxCaptureInputFilter;->$r8$clinit:I

    const-string v8, " getUnicodeChar exception: "

    const-string v9, "KnoxCaptureInputFilter"

    invoke-static {v7, v8, v9}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v7, v1

    goto/16 :goto_6

    :cond_4
    move v7, v0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v9, 0x45

    const/16 v10, 0xd

    const/16 v12, 0x1d

    if-lt v6, v12, :cond_6

    const/16 v13, 0x36

    if-le v6, v13, :cond_7

    :cond_6
    const/16 v13, 0x47

    if-eq v6, v13, :cond_7

    const/16 v13, 0x48

    if-eq v6, v13, :cond_7

    const/16 v13, 0x49

    if-eq v6, v13, :cond_7

    if-eq v6, v10, :cond_7

    if-ne v6, v9, :cond_27

    :cond_7
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-eq v6, v10, :cond_24

    if-eq v6, v9, :cond_25

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_8

    new-array v6, v1, [B

    aput-byte v1, v6, v0

    goto/16 :goto_5

    :cond_8
    :pswitch_b
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_9

    new-array v6, v1, [B

    const/4 v8, 0x2

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_9
    :pswitch_c
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_a

    new-array v6, v1, [B

    const/4 v8, 0x3

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_a
    :pswitch_d
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_b

    new-array v6, v1, [B

    aput-byte v11, v6, v0

    goto/16 :goto_5

    :cond_b
    :pswitch_e
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_c

    new-array v6, v1, [B

    const/4 v8, 0x5

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_c
    :pswitch_f
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_d

    new-array v6, v1, [B

    const/4 v8, 0x6

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_d
    :pswitch_10
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_e

    new-array v6, v1, [B

    const/4 v8, 0x7

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_e
    :pswitch_11
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_f

    new-array v6, v1, [B

    const/16 v8, 0x8

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_f
    :pswitch_12
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_10

    new-array v6, v1, [B

    const/16 v8, 0x9

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_10
    :pswitch_13
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_11

    new-array v6, v1, [B

    const/16 v8, 0xa

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_11
    :pswitch_14
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_12

    new-array v6, v1, [B

    const/16 v8, 0xb

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_12
    :pswitch_15
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_13

    new-array v6, v1, [B

    const/16 v8, 0xc

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_13
    :pswitch_16
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_14

    new-array v6, v1, [B

    aput-byte v10, v6, v0

    goto/16 :goto_5

    :cond_14
    :pswitch_17
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_15

    new-array v6, v1, [B

    const/16 v8, 0xe

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_15
    :pswitch_18
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_16

    new-array v6, v1, [B

    const/16 v8, 0xf

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_16
    :pswitch_19
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_17

    new-array v6, v1, [B

    const/16 v8, 0x10

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_17
    :pswitch_1a
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_18

    new-array v6, v1, [B

    const/16 v8, 0x11

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_18
    :pswitch_1b
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_19

    new-array v6, v1, [B

    const/16 v8, 0x12

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_19
    :pswitch_1c
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1a

    new-array v6, v1, [B

    const/16 v8, 0x13

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1a
    :pswitch_1d
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1b

    new-array v6, v1, [B

    const/16 v8, 0x14

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1b
    :pswitch_1e
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1c

    new-array v6, v1, [B

    const/16 v8, 0x15

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1c
    :pswitch_1f
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1d

    new-array v6, v1, [B

    const/16 v8, 0x16

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1d
    :pswitch_20
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1e

    new-array v6, v1, [B

    const/16 v8, 0x17

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1e
    :pswitch_21
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_1f

    new-array v6, v1, [B

    const/16 v8, 0x18

    aput-byte v8, v6, v0

    goto/16 :goto_5

    :cond_1f
    :pswitch_22
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_20

    new-array v6, v1, [B

    const/16 v8, 0x19

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_20
    :pswitch_23
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_21

    new-array v6, v1, [B

    const/16 v8, 0x1a

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_21
    :pswitch_24
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_22

    new-array v6, v1, [B

    const/16 v8, 0x1b

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_22
    :pswitch_25
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_23

    new-array v6, v1, [B

    const/16 v8, 0x1c

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_23
    :pswitch_26
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_24

    new-array v6, v1, [B

    aput-byte v12, v6, v0

    goto :goto_5

    :cond_24
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_25

    new-array v6, v1, [B

    const/16 v8, 0x1e

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_25
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_26

    new-array v6, v1, [B

    const/16 v8, 0x1f

    aput-byte v8, v6, v0

    goto :goto_5

    :cond_26
    :goto_4
    new-array v6, v1, [B

    aput-byte v0, v6, v0

    :goto_5
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    goto/16 :goto_3

    :cond_27
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    new-array v9, v1, [B

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v9, v0

    move v7, v1

    move-object v6, v9

    :goto_6
    if-eqz v7, :cond_28

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_28

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v0, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_28
    :goto_7
    if-eqz v6, :cond_1

    array-length v5, v6

    move v7, v0

    :goto_8
    if-ge v7, v5, :cond_1

    aget-byte v8, v6, v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto :goto_8

    :cond_29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    if-lez v2, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v0

    move v8, v7

    :goto_9
    if-ge v8, v4, :cond_2a

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/2addr v8, v1

    check-cast v9, Ljava/lang/Byte;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v2, v7

    move v7, v10

    goto :goto_9

    :cond_2a
    iget p1, v3, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    const-string/jumbo v1, "content://com.samsung.android.bbc.bbcagent/knoxCapture/updateBarcodeDataFromhw"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v7, "deviceId"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "scanInput"

    invoke-virtual {v4, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p1, v3, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v4, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2b
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, -0x1

    iput p0, v3, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2c

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v5, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2c
    :goto_a
    return-void

    :cond_2d
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x90
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

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_24
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method
