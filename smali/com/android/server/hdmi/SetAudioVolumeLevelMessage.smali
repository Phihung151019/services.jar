.class public final Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAudioVolumeLevel:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 6

    const/16 v3, 0x73

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    iput p3, v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 8

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    new-array v7, v1, [B

    const/4 v1, 0x0

    aput-byte v0, v7, v1

    const/16 v0, 0x7fff

    invoke-static {p0, p1, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v0, p0, p1, p2, v7}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(III[B)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v5, 0x73

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v2
.end method
