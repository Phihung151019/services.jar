.class final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceSplRange:I

.field public final mIsDownmixing:Z

.field public final mMetadataType:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    iput-boolean p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    iput p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

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

    const-class v3, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    iget v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    iget-boolean v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Loudness properties: device SPL range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const-string/jumbo v1, "unknown"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "large"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "medium"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "small"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " down-mixing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " metadata type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
