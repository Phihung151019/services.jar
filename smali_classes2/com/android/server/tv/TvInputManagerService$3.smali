.class public final Lcom/android/server/tv/TvInputManagerService$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;


# virtual methods
.method public final onDeviceSelected(II)V
    .locals 0

    const-string/jumbo p0, "TvInputManagerService"

    if-nez p1, :cond_0

    const-string/jumbo p1, "Setting TV as the active CEC device was successful."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p2, "Setting TV as the active CEC device failed with result "

    invoke-static {p1, p2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
