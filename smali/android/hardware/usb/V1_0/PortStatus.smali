.class public final Landroid/hardware/usb/V1_0/PortStatus;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public portName:Ljava/lang/String;

.field public supportedModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

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

    const-class v3, Landroid/hardware/usb/V1_0/PortStatus;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    iget p1, p1, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 p3, 0x10

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    const-wide/16 p3, 0x14

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    const-wide/16 p3, 0x18

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    const-wide/16 p3, 0x1c

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    const-wide/16 p3, 0x1d

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const-wide/16 p3, 0x1e

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    const-wide/16 p3, 0x20

    add-long/2addr p3, v6

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.portName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .currentDataRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    const-string v2, "0x"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string/jumbo v6, "NONE"

    if-nez v1, :cond_0

    move-object v1, v6

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    const-string v1, "HOST"

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    const-string v1, "DEVICE"

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    const-string/jumbo v1, "NUM_DATA_ROLES"

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .currentPowerRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    const-string/jumbo v6, "SOURCE"

    goto :goto_1

    :cond_5
    if-ne v1, v4, :cond_6

    const-string/jumbo v6, "SINK"

    goto :goto_1

    :cond_6
    if-ne v1, v3, :cond_7

    const-string/jumbo v6, "NUM_POWER_ROLES"

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .currentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    invoke-static {v1}, Landroid/hardware/usb/V1_0/PortMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .canChangeMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .canChangeDataRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .canChangePowerRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .supportedModes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    invoke-static {p0}, Landroid/hardware/usb/V1_0/PortMode;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
