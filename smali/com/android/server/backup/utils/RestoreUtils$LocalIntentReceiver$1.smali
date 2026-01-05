.class public final Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    iget-object p1, p1, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    iput-object p2, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
