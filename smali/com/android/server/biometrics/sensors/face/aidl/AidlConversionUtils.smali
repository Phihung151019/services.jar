.class public abstract Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static convertAidlToFrameworkFeature(B)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unsupported feature : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AidlConversionUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unsupported feature : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AidlConversionUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x17

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x18

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x15

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_6
    const/16 p0, 0x13

    return p0

    :pswitch_7
    const/16 p0, 0x12

    return p0

    :pswitch_8
    const/16 p0, 0x11

    return p0

    :pswitch_9
    const/16 p0, 0x10

    return p0

    :pswitch_a
    const/16 p0, 0xf

    return p0

    :pswitch_b
    const/16 p0, 0xe

    return p0

    :pswitch_c
    const/16 p0, 0xd

    return p0

    :pswitch_d
    const/16 p0, 0xc

    return p0

    :pswitch_e
    const/16 p0, 0xb

    return p0

    :pswitch_f
    const/16 p0, 0xa

    return p0

    :pswitch_10
    const/16 p0, 0x9

    return p0

    :pswitch_11
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x7

    return p0

    :pswitch_13
    const/4 p0, 0x6

    return p0

    :pswitch_14
    const/4 p0, 0x5

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x3

    return p0

    :pswitch_17
    const/4 p0, 0x2

    return p0

    :pswitch_18
    const/4 p0, 0x1

    return p0

    :pswitch_19
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
