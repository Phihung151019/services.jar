.class public abstract Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static writeServiceEvent(ILandroid/content/ComponentName;)V
    .locals 6

    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v0, 0xcf

    const/4 v3, 0x0

    move v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeSessionEvent(IIILandroid/content/ComponentName;)V
    .locals 7

    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v0, 0xd0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
