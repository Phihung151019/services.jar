.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLastComputed:J

.field public final mResult:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-void
.end method
