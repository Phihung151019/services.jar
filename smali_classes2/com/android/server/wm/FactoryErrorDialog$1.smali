.class public final Lcom/android/server/wm/FactoryErrorDialog$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Rebooting from failed factory test"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
