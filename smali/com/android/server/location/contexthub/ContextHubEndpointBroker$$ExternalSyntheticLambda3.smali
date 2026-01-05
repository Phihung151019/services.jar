.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;->f$1:I

    const-string/jumbo v1, "onEndpointSessionOpenRequestTimeout: clean up session, id: "

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "ContextHubEndpointBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(BI)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
