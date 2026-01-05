.class public final Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public arcSupported:Z

.field public cecSupported:Z

.field public physicalAddress:S

.field public portId:I

.field public type:I


# direct methods
.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0xc

    int-to-long v7, v5

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    new-instance v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iput v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iput-boolean v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    iput-boolean v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    iput-short v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    mul-int/lit8 v7, v5, 0xc

    int-to-long v7, v7

    invoke-virtual {p0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    iput v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    const-wide/16 v9, 0x4

    add-long/2addr v9, v7

    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    iput v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    add-long v9, v7, v2

    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v9

    iput-boolean v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    const-wide/16 v9, 0x9

    add-long/2addr v9, v7

    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v9

    iput-boolean v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    const-wide/16 v9, 0xa

    add-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v7

    iput-short v7, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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

    const-class v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    iget-short p1, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    invoke-static {v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v3

    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    if-nez v1, :cond_0

    const-string v1, "INPUT"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "OUTPUT"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .portId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cecSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .arcSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .physicalAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
