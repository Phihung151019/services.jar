.class public final Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$lockingExecutor:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final executeDelayed(Ljava/lang/Runnable;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
