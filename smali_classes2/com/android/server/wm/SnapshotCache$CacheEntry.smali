.class public final Lcom/android/server/wm/SnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final snapshot:Landroid/window/TaskSnapshot;

.field public final timestamp:J

.field public final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    return-void
.end method
