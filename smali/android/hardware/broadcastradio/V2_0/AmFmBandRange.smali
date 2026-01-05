.class public final Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public lowerBound:I

.field public scanSpacing:I

.field public spacing:I

.field public upperBound:I


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

    const-class v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    iget v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    iget p1, p1, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.lowerBound = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .upperBound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .spacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .scanSpacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
