.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "BookKeeping time : 30_SECONDS_EXPIRED; OptOutTriggered="

    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v1, v1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v2, v2, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IQIServiceBrokerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-static {v0, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
