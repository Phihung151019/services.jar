.class public final Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mForceLoadReducedJpeg:Z

.field public final mScale:F


# direct methods
.method public constructor <init>(ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    iput-boolean p1, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    return-void
.end method
