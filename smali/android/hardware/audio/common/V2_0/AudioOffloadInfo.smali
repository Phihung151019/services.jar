.class public final Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public bitRatePerSecond:I

.field public bitWidth:I

.field public bufferSize:I

.field public channelMask:I

.field public durationMicroseconds:J

.field public format:I

.field public hasVideo:Z

.field public isStreaming:Z

.field public sampleRateHz:I

.field public streamType:I

.field public usage:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

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

    const-class v3, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iget-wide v4, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    iget p1, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    if-eq p0, p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 12

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v10

    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{.sampleRateHz = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", .channelMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", .format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioFormat;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", .streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    const/4 v3, -0x1

    const-string v4, "0x"

    const-string v5, "CNT"

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const-string/jumbo v14, "NOTIFICATION"

    const/4 v15, 0x5

    const-string v16, "ALARM"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "DEFAULT"

    goto/16 :goto_0

    :cond_0
    if-nez v2, :cond_1

    const-string/jumbo v2, "MIN"

    goto/16 :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v2, "VOICE_CALL"

    goto/16 :goto_0

    :cond_2
    if-ne v2, v9, :cond_3

    const-string/jumbo v2, "SYSTEM"

    goto/16 :goto_0

    :cond_3
    if-ne v2, v8, :cond_4

    const-string/jumbo v2, "RING"

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_5

    const-string/jumbo v2, "MUSIC"

    goto :goto_0

    :cond_5
    if-ne v2, v6, :cond_6

    move-object/from16 v2, v16

    goto :goto_0

    :cond_6
    if-ne v2, v15, :cond_7

    move-object v2, v14

    goto :goto_0

    :cond_7
    if-ne v2, v13, :cond_8

    const-string v2, "BLUETOOTH_SCO"

    goto :goto_0

    :cond_8
    if-ne v2, v12, :cond_9

    const-string v2, "ENFORCED_AUDIBLE"

    goto :goto_0

    :cond_9
    if-ne v2, v11, :cond_a

    const-string v2, "DTMF"

    goto :goto_0

    :cond_a
    if-ne v2, v10, :cond_b

    const-string/jumbo v2, "TTS"

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    const-string v2, "ACCESSIBILITY"

    goto :goto_0

    :cond_c
    const/16 v3, 0xb

    if-ne v2, v3, :cond_d

    const-string/jumbo v2, "REROUTING"

    goto :goto_0

    :cond_d
    const/16 v10, 0xc

    if-ne v2, v10, :cond_e

    const-string/jumbo v2, "PATCH"

    goto :goto_0

    :cond_e
    if-ne v2, v3, :cond_f

    const-string/jumbo v2, "PUBLIC_CNT"

    goto :goto_0

    :cond_f
    if-ne v2, v10, :cond_10

    const-string v2, "FOR_POLICY_CNT"

    goto :goto_0

    :cond_10
    const/16 v3, 0xd

    if-ne v2, v3, :cond_11

    move-object v2, v5

    goto :goto_0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", .bitRatePerSecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", .durationMicroseconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", .hasVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", .isStreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", .bitWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", .bufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", .usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    if-nez v0, :cond_12

    const-string/jumbo v5, "UNKNOWN"

    goto/16 :goto_1

    :cond_12
    if-ne v0, v9, :cond_13

    const-string/jumbo v5, "MEDIA"

    goto/16 :goto_1

    :cond_13
    if-ne v0, v8, :cond_14

    const-string/jumbo v5, "VOICE_COMMUNICATION"

    goto/16 :goto_1

    :cond_14
    if-ne v0, v7, :cond_15

    const-string/jumbo v5, "VOICE_COMMUNICATION_SIGNALLING"

    goto/16 :goto_1

    :cond_15
    if-ne v0, v6, :cond_16

    move-object/from16 v5, v16

    goto/16 :goto_1

    :cond_16
    if-ne v0, v15, :cond_17

    move-object v5, v14

    goto/16 :goto_1

    :cond_17
    if-ne v0, v13, :cond_18

    const-string/jumbo v5, "NOTIFICATION_TELEPHONY_RINGTONE"

    goto :goto_1

    :cond_18
    if-ne v0, v12, :cond_19

    const-string/jumbo v5, "NOTIFICATION_COMMUNICATION_REQUEST"

    goto :goto_1

    :cond_19
    if-ne v0, v11, :cond_1a

    const-string/jumbo v5, "NOTIFICATION_COMMUNICATION_INSTANT"

    goto :goto_1

    :cond_1a
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1b

    const-string/jumbo v5, "NOTIFICATION_COMMUNICATION_DELAYED"

    goto :goto_1

    :cond_1b
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1c

    const-string/jumbo v5, "NOTIFICATION_EVENT"

    goto :goto_1

    :cond_1c
    const/16 v3, 0xb

    if-ne v0, v3, :cond_1d

    const-string v5, "ASSISTANCE_ACCESSIBILITY"

    goto :goto_1

    :cond_1d
    const/16 v10, 0xc

    if-ne v0, v10, :cond_1e

    const-string v5, "ASSISTANCE_NAVIGATION_GUIDANCE"

    goto :goto_1

    :cond_1e
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1f

    const-string v5, "ASSISTANCE_SONIFICATION"

    goto :goto_1

    :cond_1f
    const/16 v2, 0xe

    if-ne v0, v2, :cond_20

    const-string v5, "GAME"

    goto :goto_1

    :cond_20
    const/16 v2, 0xf

    if-ne v0, v2, :cond_21

    const-string/jumbo v5, "VIRTUAL_SOURCE"

    goto :goto_1

    :cond_21
    const/16 v2, 0x10

    if-ne v0, v2, :cond_22

    const-string v5, "ASSISTANT"

    goto :goto_1

    :cond_22
    const/16 v3, 0x11

    if-ne v0, v3, :cond_23

    goto :goto_1

    :cond_23
    if-ne v0, v2, :cond_24

    const-string/jumbo v5, "MAX"

    goto :goto_1

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string/jumbo v0, "}"

    invoke-static {v1, v5, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
