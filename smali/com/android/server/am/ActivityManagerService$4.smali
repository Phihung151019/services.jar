.class public final Lcom/android/server/am/ActivityManagerService$4;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    invoke-virtual {p3, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result p3

    if-eqz p6, :cond_0

    if-gez p3, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-ltz p3, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->remove(I)V

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
