.class public final Lcom/android/server/appop/AppOpsService$7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsManagerLocal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUidInForeground(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    const/4 v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
