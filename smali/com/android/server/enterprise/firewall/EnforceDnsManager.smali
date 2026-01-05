.class public final Lcom/android/server/enterprise/firewall/EnforceDnsManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public mEnforceDnsUid:Z

.field public final mLinkPropertiesMap:Ljava/util/Map;

.field public mMaxSamples:I

.field public mMinSamples:I

.field public mSampleValidity:I

.field public mSuccessThreshold:I

.field public final mTransportsMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    return-void
.end method


# virtual methods
.method public final flushVmDnsCache()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendDnsConfigurationForNetwork(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v1, :cond_9

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "dns_resolver_sample_validity_seconds"

    const/16 v5, 0x708

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    const-string v4, "EnforceDnsManager"

    if-ltz v3, :cond_1

    const v6, 0xffff

    if-le v3, v6, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Invalid sampleValidity="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", using default=1800"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "dns_resolver_success_threshold_percent"

    const/16 v6, 0x19

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    if-ltz v3, :cond_3

    const/16 v5, 0x64

    if-le v3, v5, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid successThreshold="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", using default=25"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    :cond_4
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "dns_resolver_min_samples"

    const/16 v6, 0x8

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "dns_resolver_max_samples"

    const/16 v7, 0x40

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    if-ltz v5, :cond_5

    if-gt v5, v3, :cond_5

    if-le v3, v7, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid sample count (min, max)=("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), using default=(8, 64)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iput v7, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    :cond_6
    new-instance v3, Landroid/net/ResolverParamsParcel;

    invoke-direct {v3}, Landroid/net/ResolverParamsParcel;-><init>()V

    move/from16 v5, p1

    iput v5, v3, Landroid/net/ResolverParamsParcel;->netId:I

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    iput v5, v3, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    iput v5, v3, Landroid/net/ResolverParamsParcel;->successThreshold:I

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iput v5, v3, Landroid/net/ResolverParamsParcel;->minSamples:I

    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    iput v5, v3, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    move v8, v10

    goto :goto_0

    :cond_7
    iput-object v6, v3, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-array v1, v7, [Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    new-instance v1, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v1}, Landroid/net/ResolverOptionsParcel;-><init>()V

    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    iput-boolean v5, v1, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    iput-object v2, v3, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    iget v1, v3, Landroid/net/ResolverParamsParcel;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v1, v3, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v3, Landroid/net/ResolverParamsParcel;->successThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v3, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v3, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v3, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v3, Landroid/net/ResolverParamsParcel;->retryCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v3, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    filled-new-array/range {v5 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "sendDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setResolverConfiguration - entered"

    const-string v2, "DnsResolverAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/net/ResolverParamsParcel;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo v0, "setResolverConfiguration - exited"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method
