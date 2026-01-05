.class public Landroid/net/NetworkFactory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field static final DBG:Z = true

.field static final VDBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final mImpl:Landroid/net/NetworkFactoryShim;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Landroid/net/NetworkFactoryImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    return-void

    :cond_0
    new-instance p3, Landroid/net/NetworkFactoryLegacyImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p2}, Landroid/net/NetworkFactoryShim;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Landroid/net/NetworkProvider;
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    return-object p0
.end method

.method public getRequestCount()I
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getRequestCount()I

    move-result p0

    return p0
.end method

.method public getSerialNumber()I
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {p0}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1

    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    :cond_0
    return-void
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/NetworkFactoryShim;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final reevaluateAllRequests()V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->reevaluateAllRequests()V

    return-void
.end method

.method public register()V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->register(Ljava/lang/String;)V

    return-void
.end method

.method public registerIgnoringScore()V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->registerIgnoringScore(Ljava/lang/String;)V

    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 0

    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    :cond_0
    return-void
.end method

.method public releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public setScoreFilter(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(I)V

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public startNetwork()V
    .locals 0

    return-void
.end method

.method public stopNetwork()V
    .locals 0

    return-void
.end method

.method public terminate()V
    .locals 2

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    const-string/jumbo v1, "Unregistering NetworkFactory"

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "This NetworkFactory was never registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
