.class public final Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    iget-object v0, v0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    iget-object v1, v1, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float p1, p0, v2

    if-lez p1, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->setSmallAreaDetectionThreshold(FI)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
