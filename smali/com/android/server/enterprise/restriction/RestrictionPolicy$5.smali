.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 6

    const-string/jumbo v0, "MultiSimPolicy"

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-boolean v3, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "showSubscriptionInfos"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    iget-boolean v5, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->registerSubscriptionCallback()V

    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
