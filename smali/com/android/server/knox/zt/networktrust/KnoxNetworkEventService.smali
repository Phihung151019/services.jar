.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# instance fields
.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

.field public final mEnabledEvents:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

.field public mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

.field public final mUserIdList:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVpnBypassLoggingStateMap:Ljava/util/HashMap;

.field public final mVpnNetworkCallbackList:Ljava/util/HashMap;


# direct methods
.method public static -$$Nest$mhandleStartMonitoring(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "Invalid event type - "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "eventType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    const-string v1, "KnoxNetworkEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerVpnNetworkCallback(I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "KnoxNetworkEventService"

    const-string/jumbo v0, "handleStartMonitoring() registerSystemDefaultNetworkCallback()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerSystemDefaultNetworkCallback()V

    goto :goto_2

    :pswitch_2
    const-string p1, "KnoxNetworkEventService"

    const-string/jumbo v0, "handleStartMonitoring() insertRuleForInsecurePorts()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "KnoxNetworkEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleStartMonitoring() insertRuleForInsecurePorts userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRuleForInsecurePorts(I)V

    goto :goto_1

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerUserActivityReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    sget-boolean v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    const-class v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-direct {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;-><init>()V

    sput-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-static {}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->isIptablesExtensionPresent()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "ro.organization_owned"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "KnoxNwEventHandler"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerUserActivityReceiver()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
    .locals 2

    const-class v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-direct {v1, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 3

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    if-ltz p1, :cond_2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_2

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    const/16 v1, 0xff

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v1, p1

    int-to-byte p1, p1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length p1, p0

    if-ge v0, p1, :cond_1

    const/4 p1, 0x0

    aput-byte p1, p0, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getNetworkPart error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP address with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes has invalid prefix length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final registerSystemDefaultNetworkCallback()V
    .locals 6

    const-string v0, "Failed to register system default network callback "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    invoke-direct {v4, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    :cond_0
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    iget-object v5, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "KnoxNetworkEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final registerUserActivityReceiver()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final registerVpnNetworkCallback(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;

    invoke-direct {v2, p0, p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;I)V

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    invoke-virtual {v4, v3, v2, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createEventIPTableChainForUser(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void
.end method

.method public final sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final unRegisterVpnNetworkCallback(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;

    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V

    return-void
.end method

.method public final unregisterSystemDefaultNetworkCallback()V
    .locals 5

    const-string v0, "Failed to unregister system default network callback "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    const-string v3, "KnoxNetworkEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
