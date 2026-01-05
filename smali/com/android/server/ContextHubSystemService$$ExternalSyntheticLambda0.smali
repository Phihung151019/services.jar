.class public final synthetic Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ContextHubSystemService;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ContextHubSystemService;

    iput-object p2, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ContextHubSystemService;

    iget-object p0, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-direct {v4, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;-><init>(Landroid/hardware/contexthub/IContextHub;)V

    :goto_0
    const-string/jumbo v2, "RemoteException while attaching to Context Hub HAL proxy"

    const-string v5, "Context Hub HAL service not found"

    const/4 v6, 0x1

    const-string v7, "IContextHubWrapper"

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {v6}, Landroid/hardware/contexthub/V1_2/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_2/IContexthub;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_3

    :cond_1
    new-instance v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;

    invoke-direct {v8, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V

    move-object v4, v8

    :cond_2
    :goto_3
    if-nez v4, :cond_4

    :try_start_1
    invoke-static {v6}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    move-object v4, v3

    :goto_5
    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_6

    :cond_3
    new-instance v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V

    iput-object v4, v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    move-object v4, v8

    :cond_4
    :goto_6
    if-nez v4, :cond_6

    :try_start_2
    invoke-static {v6}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_8

    :catch_4
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_5
    move-exception v4

    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    move-object v2, v3

    :goto_8
    if-nez v2, :cond_5

    goto :goto_9

    :cond_5
    new-instance v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V

    iput-object v2, v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    :goto_9
    move-object v4, v3

    :cond_6
    invoke-direct {v1, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object v1, v0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    return-void
.end method
