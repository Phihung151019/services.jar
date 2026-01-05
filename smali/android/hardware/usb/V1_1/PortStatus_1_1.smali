.class public final Landroid/hardware/usb/V1_1/PortStatus_1_1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public currentMode:I

.field public final status:Landroid/hardware/usb/V1_0/PortStatus;

.field public supportedModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/usb/V1_0/PortStatus;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget p1, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{.status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", .supportedModes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const-string/jumbo v3, "NONE"

    invoke-static {v3}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    const-string/jumbo v6, "UFP"

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v8, v2, 0x2

    const-string v9, "DFP"

    const/4 v10, 0x2

    if-ne v8, v10, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v5, v5, 0x2

    :cond_1
    and-int/lit8 v8, v2, 0x3

    const-string v11, "DRP"

    const/4 v12, 0x3

    if-ne v8, v12, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v12

    :cond_2
    and-int/lit8 v8, v2, 0x4

    const-string/jumbo v13, "NUM_MODES"

    const/4 v14, 0x4

    if-ne v8, v14, :cond_3

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v5, v5, 0x4

    :cond_3
    const-string v15, "AUDIO_ACCESSORY"

    if-ne v8, v14, :cond_4

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v5, v5, 0x4

    :cond_4
    and-int/lit8 v8, v2, 0x8

    const-string v14, "DEBUG_ACCESSORY"

    const/16 v12, 0x8

    if-ne v8, v12, :cond_5

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v5, v5, 0x8

    :cond_5
    and-int/lit8 v8, v2, 0x10

    const-string/jumbo v12, "NUM_MODES_1_1"

    const/16 v10, 0x10

    if-ne v8, v10, :cond_6

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v5, v5, 0x10

    :cond_6
    const-string v8, "0x"

    if-eq v2, v5, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v5, v5

    and-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v2, " | "

    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", .currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    if-ne v0, v7, :cond_9

    move-object v3, v6

    goto :goto_1

    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    move-object v3, v9

    goto :goto_1

    :cond_a
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    move-object v3, v11

    goto :goto_1

    :cond_b
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    move-object v3, v13

    goto :goto_1

    :cond_c
    if-ne v0, v2, :cond_d

    move-object v3, v15

    goto :goto_1

    :cond_d
    const/16 v2, 0x8

    if-ne v0, v2, :cond_e

    move-object v3, v14

    goto :goto_1

    :cond_e
    const/16 v2, 0x10

    if-ne v0, v2, :cond_f

    move-object v3, v12

    goto :goto_1

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string/jumbo v0, "}"

    invoke-static {v1, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
