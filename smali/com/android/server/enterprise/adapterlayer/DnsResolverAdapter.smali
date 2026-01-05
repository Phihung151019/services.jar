.class public final Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mDnsResolver:Landroid/net/IDnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    const-string v1, "DnsResolverAdapter"

    if-nez v0, :cond_1

    const-string/jumbo v0, "dnsresolver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "updateEnforceDnsUidForNetwork: Failed to get binder for dns resolver service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    :goto_0
    if-nez v0, :cond_2

    const-string p0, "Failed to get dns resolver service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {p1, p0}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;->execute(Landroid/net/IDnsResolver;)V

    const-string/jumbo p0, "dnsresolver called successfully"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error calling dnsresolver service: "

    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
