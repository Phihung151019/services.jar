.class public final Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mTraceProcessClassEnum:I

.field public mTraceProcessName:Ljava/lang/String;

.field public mTraceUid:I


# virtual methods
.method public final shouldSanitize(IILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    if-ne p3, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, v1, :cond_1

    iget p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    if-ne p0, v1, :cond_1

    if-nez p2, :cond_1

    return v1

    :cond_1
    return v0
.end method
