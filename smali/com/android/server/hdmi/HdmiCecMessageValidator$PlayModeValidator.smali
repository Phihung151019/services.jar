.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 11

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    array-length p0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    array-length p0, p1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    goto/16 :goto_1

    :cond_2
    aget-byte p0, p1, v2

    const/16 v3, 0x56

    const/16 v4, 0xa0

    const/16 v5, 0x90

    const/16 v6, 0x80

    const/16 v7, 0x30

    const/16 v8, 0x20

    const/16 v9, 0x60

    const/4 v10, 0x3

    if-eq p0, v3, :cond_7

    const/16 v3, 0x57

    if-eq p0, v3, :cond_6

    if-eq p0, v9, :cond_5

    const/16 v3, 0x67

    if-eq p0, v3, :cond_3

    goto :goto_0

    :cond_3
    array-length p0, p1

    if-lt p0, v0, :cond_8

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v10

    goto :goto_1

    :cond_5
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_6
    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    if-eq p0, v8, :cond_1

    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    const/16 p1, 0xb1

    const/16 v0, 0xb3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xc1

    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_7
    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    const/16 p1, 0x10

    if-eq p0, p1, :cond_1

    if-eq p0, v8, :cond_1

    if-eq p0, v7, :cond_1

    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    const/16 p1, 0x50

    if-eq p0, p1, :cond_1

    if-eq p0, v9, :cond_1

    const/16 p1, 0x70

    if-eq p0, p1, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    const/16 p1, 0x91

    if-eq p0, p1, :cond_1

    if-ne p0, v4, :cond_4

    goto/16 :goto_0

    :cond_8
    :goto_1
    return v0

    :pswitch_0
    array-length p0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ge p0, v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p0, 0x0

    aget-byte v2, p1, p0

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x5

    if-nez v2, :cond_a

    array-length v0, p1

    if-lt v0, v3, :cond_c

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    move-result v1

    goto :goto_2

    :cond_a
    if-ne v2, v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    array-length v2, p1

    if-lt v2, v3, :cond_c

    aget-byte v2, p1, v1

    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v4, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_c

    aget-byte p1, p1, v0

    const/16 v0, 0x1f

    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    move v1, p0

    :goto_2
    if-eqz v1, :cond_d

    move v0, p0

    goto :goto_3

    :cond_d
    const/4 v0, 0x3

    :goto_3
    return v0

    :pswitch_1
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_e

    const/4 p0, 0x4

    goto :goto_7

    :cond_e
    const/4 p0, 0x0

    aget-byte v1, p1, p0

    and-int/lit8 v2, v1, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x2

    if-ne v2, v3, :cond_10

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0xb

    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9

    if-eq v1, v3, :cond_f

    if-ne v1, v2, :cond_13

    :cond_f
    array-length v1, p1

    sub-int/2addr v1, v0

    if-lt v1, v4, :cond_13

    goto :goto_4

    :cond_10
    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0xe

    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v3

    if-eqz v3, :cond_11

    if-ne v1, v2, :cond_13

    array-length v1, p1

    sub-int/2addr v1, v0

    if-lt v1, v4, :cond_13

    :goto_4
    move v1, v0

    :goto_5
    move v2, v1

    goto :goto_6

    :cond_11
    move v1, p0

    goto :goto_5

    :goto_6
    if-eqz v2, :cond_12

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v2

    const/16 v3, 0x63

    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/2addr v1, v0

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_12
    const/4 p0, 0x3

    :cond_13
    :goto_7
    return p0

    :pswitch_2
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_14

    const/4 p0, 0x4

    goto :goto_8

    :cond_14
    const/4 p0, 0x0

    aget-byte v0, p1, p0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_16

    aget-byte p1, p1, p0

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x80

    if-ne p1, v0, :cond_15

    goto :goto_8

    :cond_15
    const/4 p0, 0x3

    :cond_16
    :goto_8
    return p0

    :pswitch_3
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_17

    const/4 p0, 0x4

    goto :goto_9

    :cond_17
    array-length p0, p1

    if-le p0, v0, :cond_18

    const/4 p0, 0x5

    goto :goto_9

    :cond_18
    const/4 p0, 0x0

    aget-byte p1, p1, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_9

    :cond_19
    const/4 p0, 0x3

    :goto_9
    return p0

    :pswitch_4
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v0, 0x3

    :goto_a
    return v0

    :pswitch_5
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    aget-byte p0, p1, v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    const/4 v1, 0x3

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    aget-byte p0, p1, v1

    const/16 p1, 0x1f

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_b

    :cond_1d
    move v0, v1

    :goto_b
    return v0

    :pswitch_6
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v0, 0x3

    :goto_c
    return v0

    :pswitch_7
    array-length p0, p1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_20

    const/4 v0, 0x4

    goto :goto_d

    :cond_20
    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    aget-byte p1, p1, v1

    if-ltz p1, :cond_21

    const/4 v2, 0x7

    if-gt p1, v2, :cond_21

    if-eq p1, v1, :cond_21

    move v0, p0

    :cond_21
    :goto_d
    return v0

    :pswitch_8
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_22

    const/4 p0, 0x4

    goto :goto_e

    :cond_22
    const/4 p0, 0x0

    aget-byte v1, p1, p0

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_24

    aget-byte v0, p1, p0

    const/16 v1, 0x9

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_24

    aget-byte v0, p1, p0

    const/16 v1, 0x10

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_24

    aget-byte v0, p1, p0

    const/16 v1, 0x1a

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_24

    aget-byte p1, p1, p0

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_23

    goto :goto_e

    :cond_23
    const/4 p0, 0x3

    :cond_24
    :goto_e
    return p0

    :pswitch_9
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_25

    const/4 p0, 0x4

    goto :goto_f

    :cond_25
    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_f

    :cond_26
    const/4 p0, 0x3

    :goto_f
    return p0

    :pswitch_a
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_27

    const/4 p0, 0x4

    goto :goto_11

    :cond_27
    const/4 p0, 0x0

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_28

    const/16 v1, 0x40

    if-eq v0, v1, :cond_28

    const/16 v1, 0x80

    if-eq v0, v1, :cond_28

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_29

    :cond_28
    const/4 v0, 0x1

    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2b

    aget-byte v1, p1, v0

    const/16 v2, 0x20

    const/16 v3, 0x7e

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_29
    const/4 p0, 0x3

    goto :goto_11

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    :goto_11
    return p0

    :pswitch_b
    array-length p0, p1

    const/16 v0, 0x9

    const/4 v1, 0x4

    if-ge p0, v0, :cond_2c

    goto/16 :goto_15

    :cond_2c
    const/4 p0, 0x0

    aget-byte v0, p1, p0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_30

    aget-byte v0, p1, v3

    const/16 v4, 0xc

    invoke-static {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    aget-byte v4, p1, v0

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v4

    const/16 v5, 0x17

    invoke-static {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v4

    if-eqz v4, :cond_30

    aget-byte v4, p1, v2

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_30

    aget-byte v4, p1, v1

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v4

    const/16 v5, 0x63

    invoke-static {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x5

    aget-byte v5, p1, v4

    invoke-static {v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2d

    goto :goto_13

    :cond_2d
    const/4 v5, 0x7

    aget-byte v5, p1, v5

    const/16 v6, 0x8

    if-ne v5, v1, :cond_2e

    aget-byte p1, p1, v6

    const/16 v0, 0xff

    invoke-static {p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p1

    goto :goto_12

    :cond_2e
    if-ne v5, v4, :cond_2f

    array-length v1, p1

    sub-int/2addr v1, v6

    if-lt v1, v0, :cond_2f

    invoke-static {v6, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    move-result p1

    goto :goto_12

    :cond_2f
    move p1, p0

    :goto_12
    if-eqz p1, :cond_30

    goto :goto_14

    :cond_30
    :goto_13
    move v3, p0

    :goto_14
    if-eqz v3, :cond_31

    move v1, p0

    goto :goto_15

    :cond_31
    move v1, v2

    :goto_15
    return v1

    :pswitch_c
    array-length p0, p1

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-ge p0, v0, :cond_32

    goto :goto_16

    :cond_32
    const/4 p0, 0x0

    aget-byte v0, p1, p0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_33

    aget-byte v0, p1, v3

    const/16 v4, 0xc

    invoke-static {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v0

    const/16 v3, 0x17

    invoke-static {v0, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_33

    aget-byte v0, p1, v2

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_33

    aget-byte v0, p1, v1

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v0

    const/16 v1, 0x63

    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_34

    :cond_33
    move v1, v2

    goto :goto_16

    :cond_34
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    move-result p1

    if-eqz p1, :cond_33

    move v1, p0

    :goto_16
    return v1

    :pswitch_d
    array-length p0, p1

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-ge p0, v0, :cond_35

    goto/16 :goto_17

    :cond_35
    const/4 p0, 0x0

    aget-byte v0, p1, p0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    invoke-static {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_36

    aget-byte v0, p1, v2

    const/16 v5, 0xc

    invoke-static {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v2

    const/16 v5, 0x17

    invoke-static {v2, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v2

    if-eqz v2, :cond_36

    aget-byte v2, p1, v4

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v2

    if-eqz v2, :cond_36

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result v1

    const/16 v2, 0x63

    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_37

    :cond_36
    move v1, v4

    goto :goto_17

    :cond_37
    const/4 v1, 0x7

    aget-byte v1, p1, v1

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0xa

    aget-byte p1, p1, v0

    invoke-static {p1, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p1

    if-eqz p1, :cond_36

    move v1, p0

    :goto_17
    return v1

    :pswitch_e
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_38

    const/4 p0, 0x4

    goto :goto_18

    :cond_38
    const/4 p0, 0x0

    aget-byte p1, p1, p0

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_18

    :cond_39
    const/4 p0, 0x3

    :goto_18
    return p0

    nop

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
