.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;
.super Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final isValid([B)I
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->isValid([B)I

    move-result p0

    return p0
.end method
