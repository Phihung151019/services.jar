.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEndUid:I

.field public final mStartUid:I

.field public final mUidRemovalTimestamp:J

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-void
.end method
