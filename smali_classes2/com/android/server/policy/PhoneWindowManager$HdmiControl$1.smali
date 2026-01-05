.class public final Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# virtual methods
.method public final onComplete(I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "One touch play failed: "

    const-string/jumbo v0, "PhoneWindowManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
