.class public final Lcom/android/server/enterprise/security/SecurityPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field public final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string/jumbo p0, "SecurityPolicy"

    const-string/jumbo p2, "formatStorageCard - IllegalMonitorStateException"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_2
    return-void
.end method
