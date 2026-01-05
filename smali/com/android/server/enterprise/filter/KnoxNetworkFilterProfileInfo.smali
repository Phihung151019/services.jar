.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mBrowserAppList:Ljava/util/HashSet;

.field public volatile mDNSCacheStatus:I

.field public volatile mPackageName:Ljava/lang/String;

.field public volatile mPackageUid:I

.field public volatile mProfileName:Ljava/lang/String;

.field public volatile mRulesConfig:Ljava/lang/String;

.field public volatile mSocketConfig:Ljava/lang/String;

.field public volatile mState:I

.field public volatile mV4DnsConfigured:Z

.field public volatile mV4TcpConfigured:Z

.field public volatile mV4UdpConfigured:Z

.field public volatile mV6TcpConfigured:Z

.field public volatile mV6UdpConfigured:Z

.field public final mVpnClientUidList:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    return-void
.end method

.method public static containsProfileEntry(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getProfileEntries()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    .locals 4

    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    return p0
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRulesConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    return-object p0
.end method

.method public final getSocketConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    return p0
.end method

.method public final getVpnClientUidList()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    return-object p0
.end method
