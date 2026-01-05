.class public final Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mExistingSettings:Landroid/util/ArrayMap;

.field public final mForceQueryable:Landroid/util/ArraySet;

.field public final mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mForceQueryable:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    return-void
.end method
