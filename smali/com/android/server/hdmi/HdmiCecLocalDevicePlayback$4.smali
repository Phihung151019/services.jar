.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$4;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onComplete(I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "Failed to complete One Touch Play. result="

    const-string v0, "HdmiCecLocalDevicePlayback"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
