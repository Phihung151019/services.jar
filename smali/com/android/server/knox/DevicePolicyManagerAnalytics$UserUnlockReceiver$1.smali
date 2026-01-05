.class public final Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;->this$1:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;->this$1:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;

    iget-object v0, v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;->this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    sget-object v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->userUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mSavedEvents:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->handleCountableEvents(ILandroid/os/Bundle;)Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mSavedEvents:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;->this$1:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;

    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;->this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
