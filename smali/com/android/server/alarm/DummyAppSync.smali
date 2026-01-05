.class public final Lcom/android/server/alarm/DummyAppSync;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "<AppSync Disabled>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getWindowLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final isAdjustableAlarm(IIJJJLjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
