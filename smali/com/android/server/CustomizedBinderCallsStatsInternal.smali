.class public final Lcom/android/server/CustomizedBinderCallsStatsInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mContext:Landroid/content/Context;

.field public mLastNotifyTime:J

.field public mLastStoreTime:J

.field public mLastWriteTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iput-object p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    return-void
.end method
