.class public Landroid/net/NetworkFactoryLegacyImpl;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/NetworkFactoryShim;


# instance fields
.field public mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field public final mContext:Landroid/content/Context;

.field public final mNetworkRequests:Ljava/util/Map;

.field public final mParent:Landroid/net/NetworkFactory;

.field public mProvider:Landroid/net/NetworkProvider;

.field public mScore:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    iput-object p3, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V
    .locals 3

    iget-boolean v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    if-nez v0, :cond_1

    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    iget v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    if-lt v0, v2, :cond_0

    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v2}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v0}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    return-void

    :cond_1
    iget-boolean v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    iget v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    if-le v0, v2, :cond_2

    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v2}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v2

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    :cond_4
    return-void
.end method

.method public final evalRequests()V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRequestCount()I
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public handleAddRequest(Landroid/net/NetworkRequest;II)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "got request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with score "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and providerId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v1, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;II)V

    iget-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput p2, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    iput p3, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequests()V

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequests()V

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleRemoveRequest$1(Landroid/net/NetworkRequest;)V

    return-void

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    return-void
.end method

.method public final handleRemoveRequest$1(Landroid/net/NetworkRequest;)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    iget-object p1, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_0
    return-void
.end method

.method public reevaluateAllRequests()V
    .locals 1

    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkFactoryLegacyImpl;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    const-string/jumbo v1, "Registering NetworkFactory"

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$1;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/net/NetworkFactoryLegacyImpl$1;-><init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    iget-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A NetworkFactory must only be registered once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 1

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 0

    invoke-virtual {p1}, Landroid/net/NetworkScore;->getLegacyInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->setScoreFilter(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "providerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ScoreFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
