.class public final Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/os/HwBinder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method

.method private final debug$com$android$server$broadcastradio$hal2$RadioModule$1(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method private final debug$com$android$server$broadcastradio$hal2$RadioModule$2(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method private final ping$com$android$server$broadcastradio$hal2$RadioModule$1()V
    .locals 0

    return-void
.end method

.method private final ping$com$android$server$broadcastradio$hal2$RadioModule$2()V
    .locals 0

    return-void
.end method

.method private final setHALInstrumentation$com$android$server$broadcastradio$hal2$RadioModule$1()V
    .locals 0

    return-void
.end method

.method private final setHALInstrumentation$com$android$server$broadcastradio$hal2$RadioModule$2()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 1

    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

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
    .locals 2

    const/16 v0, 0x20

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/ArrayList;

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x3dt
        -0x72t
        -0x2at
        0x7dt
        -0x80t
        0x7et
        -0x61t
        0x15t
        -0x30t
        0x70t
        -0x7dt
        -0x70t
        -0x5ct
        0x16t
        -0x42t
        -0x20t
        0x9t
        0x20t
        -0xat
        -0x5et
        0x21t
        -0x6at
        -0x3ft
        0x4t
        -0x34t
        -0x62t
        0x44t
        0x3ct
        -0x73t
        0x21t
        0x7dt
        -0x8t
    .end array-data

    :array_1
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

    :array_2
    .array-data 1
        -0x51t
        0x24t
        -0x48t
        0x7ct
        -0x58t
        -0x48t
        -0x10t
        0x2ft
        -0x33t
        -0x1et
        0x5t
        -0x1ct
        0x7dt
        -0x4at
        -0x57t
        0x60t
        -0x61t
        -0x39t
        -0x17t
        -0x29t
        0x7dt
        0x73t
        -0x1at
        -0x6ct
        -0x14t
        -0x71t
        -0x64t
        0x50t
        -0x74t
        -0x5ft
        -0x6bt
        0x75t
    .end array-data

    :array_3
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
    .locals 2

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

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

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    const-wide/16 v5, 0x8

    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    const/4 v9, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v2, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v9, v2, :cond_1

    mul-int/lit8 v5, v9, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v10, 0x20

    if-ne v8, v10, :cond_0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_6
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_7
    invoke-virtual {v2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_8
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x38

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-wide v2, v3

    move-wide v4, v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v13, v9

    :goto_1
    if-ge v13, v11, :cond_3

    new-instance v14, Landroid/hardware/broadcastradio/V2_0/Announcement;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    iput-object v2, v14, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    iput-byte v9, v14, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    mul-int/lit8 v3, v13, 0x38

    int-to-long v3, v3

    invoke-virtual {v2, v1, v12, v3, v4}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x20

    add-long/2addr v5, v3

    invoke-virtual {v12, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v14, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    const-wide/16 v5, 0x28

    add-long v6, v3, v5

    const-wide/16 v16, 0x30

    add-long v3, v3, v16

    invoke-virtual {v12, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v3, v3

    move v8, v2

    move-wide v2, v3

    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    move/from16 v16, v8

    const/4 v8, 0x1

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    move-object v4, v1

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_2

    new-instance v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    mul-int/lit8 v5, v1, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v5, v14, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v1, v4

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->onListUpdated(Ljava/util/List;)V

    :goto_3
    return-void

    :pswitch_0
    move-object v4, v2

    const/4 v2, 0x1

    const-wide/16 v9, 0x20

    const-wide/16 v5, 0x0

    const-string/jumbo v7, "android.hardware.broadcastradio@2.0::ITunerCallback"

    if-eq v1, v2, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    const/4 v11, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_9
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    goto/16 :goto_7

    :sswitch_a
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_b
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_c
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_d
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0xc

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v7, v2, 0x20

    invoke-direct {v4, v7}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4
    if-ge v11, v2, :cond_5

    mul-int/lit8 v7, v11, 0x20

    int-to-long v7, v7

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz v9, :cond_4

    array-length v10, v9

    const/16 v12, 0x20

    if-ne v10, v12, :cond_4

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_e
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_f
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v4}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_10
    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v4, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v4, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v4, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-boolean v11, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iput-boolean v11, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    const-wide/16 v1, 0x28

    invoke-virtual {v4, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    const-wide/16 v1, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    const-wide/16 v1, 0x10

    invoke-virtual {v14, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v1, v15, 0x78

    int-to-long v2, v1

    invoke-virtual {v14}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x8

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move v3, v11

    :goto_5
    if-ge v3, v15, :cond_9

    new-instance v4, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v5, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    mul-int/lit8 v2, v9, 0x10

    int-to-long v2, v2

    invoke-virtual {v14}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x18

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_6
    if-ge v11, v9, :cond_a

    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    mul-int/lit8 v3, v11, 0x10

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    iget-object v3, v12, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v12}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_b
    move-object v1, v4

    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    const-wide/16 v3, 0x78

    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_c
    move-object v1, v4

    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    invoke-virtual {v1, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v3, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    invoke-virtual {v1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
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
        0xf43484e -> :sswitch_10
        0xf444247 -> :sswitch_f
        0xf445343 -> :sswitch_e
        0xf485348 -> :sswitch_d
        0xf494e54 -> :sswitch_c
        0xf504e47 -> :sswitch_b
        0xf524546 -> :sswitch_a
        0xf535953 -> :sswitch_9
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string/jumbo v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

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

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "android.hardware.broadcastradio@2.0::IAnnouncementListener@Stub"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "android.hardware.broadcastradio@2.0::ITunerCallback@Stub"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

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
