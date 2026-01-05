.class public final Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTotalUsageLimit:J

.field public final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-void
.end method
