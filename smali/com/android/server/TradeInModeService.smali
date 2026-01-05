.class public final Lcom/android/server/TradeInModeService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAccountManager:Landroid/accounts/AccountManager;

.field public mAccountsListener:Lcom/android/server/TradeInModeService$3;

.field public final mBroadcastReceiver:Lcom/android/server/TradeInModeService$1;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mNetworkCallback:Lcom/android/server/TradeInModeService$2;


# direct methods
.method public static -$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "TradeInModeService"

    const-string v1, "Could not read PDB"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static -$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z
    .locals 2

    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/metadata/tradeinmode/wipe"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "TradeInModeService"

    const-string v1, "Failed to write /metadata/tradeinmode/wipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Lcom/android/server/TradeInModeService$2;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Lcom/android/server/TradeInModeService$3;

    new-instance v0, Lcom/android/server/TradeInModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$1;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mBroadcastReceiver:Lcom/android/server/TradeInModeService$1;

    iput-object p1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getTradeInModeState()I
    .locals 2

    const-string/jumbo v0, "persist.adb.tradeinmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isDebuggable()Z
    .locals 3

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static isForceEnabledForTesting()Z
    .locals 3

    invoke-static {}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.adb.test_tradeinmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final isDeviceSetup()Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "TradeInModeService"

    const-string v4, "Could not find USER_SETUP_COMPLETE setting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v2, "device_provisioned"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final leaveTestMode()V
    .locals 2

    invoke-static {}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    :cond_0
    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "persist.adb.tradeinmode"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p0, "/metadata/tradeinmode/wipe"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "TradeInModeService"

    const-string v1, "Failed to remove wipe indicator"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "TradeInModeService"

    const-string/jumbo v0, "Resetting trade-in mode state."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "persist.adb.tradeinmode"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void

    :cond_2
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Lcom/android/server/TradeInModeService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/TradeInModeService$SettingsObserver;-><init>(Lcom/android/server/TradeInModeService;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    iget-object p1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/accounts/AccountManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManager;

    iput-object p1, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Lcom/android/server/TradeInModeService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$3;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Lcom/android/server/TradeInModeService$3;

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 3

    new-instance v0, Lcom/android/server/TradeInModeService$TradeInMode;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;)V

    const-string/jumbo v1, "tradeinmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.server.ACTION_USBDEBUG_ENABLED"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mBroadcastReceiver:Lcom/android/server/TradeInModeService$1;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final removeAccountsWatch()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Lcom/android/server/TradeInModeService$3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Lcom/android/server/TradeInModeService$3;

    :cond_0
    return-void
.end method

.method public final removeNetworkWatch()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Lcom/android/server/TradeInModeService$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Lcom/android/server/TradeInModeService$2;

    :cond_0
    return-void
.end method

.method public final stopTradeInMode()V
    .locals 2

    const-string/jumbo v0, "TradeInModeService"

    const-string/jumbo v1, "Stopping trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mBroadcastReceiver:Lcom/android/server/TradeInModeService$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "ctl.restart"

    const-string/jumbo v0, "adbd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final watchForNetworkChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/android/server/TradeInModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/TradeInModeService$2;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v1, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Lcom/android/server/TradeInModeService$2;

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
