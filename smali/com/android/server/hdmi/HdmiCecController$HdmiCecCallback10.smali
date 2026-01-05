.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;
.super Landroid/os/HwBinder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    return-void
.end method

.method private final debug$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method private final debug$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method private final ping$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10()V
    .locals 0

    return-void
.end method

.method private final ping$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11()V
    .locals 0

    return-void
.end method

.method private final setHALInstrumentation$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10()V
    .locals 0

    return-void
.end method

.method private final setHALInstrumentation$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0

    :pswitch_0
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3

    const/16 v0, 0x20

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/ArrayList;

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        -0x47t
        0x68t
        0x25t
        -0x79t
        0x67t
        0x7ct
        -0x17t
        -0x38t
        0x72t
        -0x20t
        0x4ft
        0xet
        -0x61t
        -0x2at
        -0x37t
        -0x39t
        -0x76t
        0x56t
        -0x52t
        0x79t
        0x5ct
        0x7t
        -0x35t
        -0x8t
        -0x3bt
        0x1t
        0x0t
        -0x20t
        0x35t
        0x1dt
        0x4ct
        0x44t
    .end array-data

    :array_1
    .array-data 1
        -0x19t
        0x5bt
        0x6et
        -0x16t
        0x71t
        0x1dt
        0x36t
        -0x6t
        -0x3at
        0x78t
        -0x44t
        -0x20t
        0x72t
        -0x4dt
        -0x32t
        -0x3at
        0x54t
        0x4bt
        0x27t
        -0x6t
        -0x61t
        0x4ct
        -0x27t
        0x3t
        -0x67t
        -0x6ct
        0x4t
        -0x1bt
        -0x3ft
        0x10t
        -0x36t
        0x10t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data

    :array_3
    .array-data 1
        -0x19t
        0x5bt
        0x6et
        -0x16t
        0x71t
        0x1dt
        0x36t
        -0x6t
        -0x3at
        0x78t
        -0x44t
        -0x20t
        0x72t
        -0x4dt
        -0x32t
        -0x3at
        0x54t
        0x4bt
        0x27t
        -0x6t
        -0x61t
        0x4ct
        -0x27t
        0x3t
        -0x67t
        -0x6ct
        0x4t
        -0x1bt
        -0x3ft
        0x10t
        -0x36t
        0x10t
    .end array-data

    :array_4
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    const-wide/16 v6, 0x18

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v14, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    if-eq v1, v13, :cond_6

    const/4 v13, 0x2

    const-wide/16 v4, 0x8

    if-eq v1, v13, :cond_5

    const/4 v13, 0x3

    const-string/jumbo v14, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    if-eq v1, v13, :cond_2

    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :sswitch_3
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v2, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v12, v2, :cond_1

    mul-int/lit8 v5, v12, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    array-length v10, v7

    const/16 v11, 0x20

    if-ne v10, v11, :cond_0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v8, v9, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :sswitch_5
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v14}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :sswitch_6
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :sswitch_7
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    const-wide/16 v3, 0x10

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    int-to-long v2, v11

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x8

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move v2, v12

    :goto_1
    if-ge v2, v11, :cond_3

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {v0, v9, v10, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    goto/16 :goto_5

    :cond_5
    move-object v1, v2

    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    goto :goto_5

    :cond_6
    move-object v1, v2

    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    move-object v4, v2

    int-to-long v2, v11

    invoke-virtual {v4}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x8

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move v2, v12

    :goto_3
    if-ge v2, v11, :cond_7

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {v0, v9, v10, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    :goto_5
    return-void

    :pswitch_0
    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v10, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    if-eq v1, v8, :cond_c

    const/4 v8, 0x2

    const-wide/16 v11, 0x8

    if-eq v1, v8, :cond_b

    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_9

    :sswitch_8
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    goto/16 :goto_9

    :sswitch_9
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :sswitch_a
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :sswitch_b
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_c
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v2, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6
    if-ge v9, v2, :cond_a

    mul-int/lit8 v5, v9, 0x20

    int-to-long v10, v5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_9

    array-length v8, v5

    const/16 v12, 0x20

    if-ne v8, v12, :cond_9

    invoke-virtual {v4, v10, v11, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v1, v6, v7, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :sswitch_d
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :sswitch_e
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :sswitch_f
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    goto :goto_9

    :cond_c
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v11, 0x18

    invoke-virtual {v2, v11, v12}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    const-wide/16 v3, 0x10

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    int-to-long v2, v13

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x8

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v2, v9

    :goto_7
    if-ge v2, v13, :cond_d

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {v0, v11, v12, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf43484e -> :sswitch_f
        0xf444247 -> :sswitch_e
        0xf445343 -> :sswitch_d
        0xf485348 -> :sswitch_c
        0xf494e54 -> :sswitch_b
        0xf504e47 -> :sswitch_a
        0xf524546 -> :sswitch_9
        0xf535953 -> :sswitch_8
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string/jumbo v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setHALInstrumentation()V
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "android.hardware.tv.cec@1.1::IHdmiCecCallback@Stub"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "android.hardware.tv.cec@1.0::IHdmiCecCallback@Stub"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
