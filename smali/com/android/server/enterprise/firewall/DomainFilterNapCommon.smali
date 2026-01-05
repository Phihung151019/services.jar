.class public final Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mCallbackRegistered:Z

.field public mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

.field public mContext:Landroid/content/Context;

.field public volatile mDomainFilterEnabled:Z

.field public volatile mDomainFilterOnIptablesEnabled:Z

.field public volatile mNapEnabled:Z

.field public mNetdService:Landroid/net/INetd;

.field public volatile mNetworksUpdated:Z

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    iput-object p0, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final registerConnectivityCallback()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerConnectivityCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    const-string v2, "DomainFilterNapCommon"

    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDomainFilterEnabled(Z)V
    .locals 2

    const-string/jumbo v0, "setDomainFilterEnabled "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V

    return-void
.end method

.method public final setDomainFilterOnIptablesEnabled(Z)V
    .locals 2

    const-string/jumbo v0, "setDomainFilterOnIptablesEnabled "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNpaOptionEnabled(Z)V

    return-void
.end method

.method public final setNapEnabled(Z)V
    .locals 2

    const-string/jumbo v0, "setNapEnabled "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNpaOptionEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V

    return-void
.end method

.method public final setNapProperty(Z)V
    .locals 2

    const-string/jumbo v0, "setNapProperty "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setNpaOptionEnabled(Z)V
    .locals 2

    const-string/jumbo v0, "setNpaOptionEnabled "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final declared-synchronized updateEnforceDnsUidForAllNetworks()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "DomainFilterNapCommon"

    const-string v1, "Already updated networks, leaving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_7

    const-string v0, "DomainFilterNapCommon"

    const-string v1, "Features are disabled, reverting enforce dns uid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterConnectivityCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    const-string v2, "DomainFilterNapCommon"

    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    const-string v0, "DomainFilterNapCommon"

    const-string v2, "Feature enabled, enforcing dns uid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->registerConnectivityCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final updateEnforceDnsUidForAllNetworks(Z)V
    .locals 6

    const-string/jumbo v0, "updateEnforceDnsUidForAllNetworks "

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    const-string p0, "Failed to get connectivity manager instance"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object v3

    const-string v4, "DnsResolverAdapter"

    const-string/jumbo v5, "updateEnforceDnsUidForNetwork - entered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo v2, "updateEnforceDnsUidForNetwork - exited"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
