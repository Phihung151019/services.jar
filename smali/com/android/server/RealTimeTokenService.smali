.class public final Lcom/android/server/RealTimeTokenService;
.super Lcom/android/server/IRealTimeTokenService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public bootingTime:J

.field public currentTime:J

.field public elapsedTime:J

.field public final mBootCompletedReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public final mNetWorkReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public final mTimeChangedReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public mTimerObserve:Ljava/util/Timer;

.field public mTimerTask:Lcom/android/server/RealTimeTokenService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "rtts_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "RealTimeTokenService"

    invoke-direct {p0}, Lcom/android/server/IRealTimeTokenService$Stub;-><init>()V

    new-instance v1, Lcom/android/server/RealTimeTokenService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    iput-object v1, p0, Lcom/android/server/RealTimeTokenService;->mNetWorkReceiver:Lcom/android/server/RealTimeTokenService$2;

    new-instance v2, Lcom/android/server/RealTimeTokenService$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    iput-object v2, p0, Lcom/android/server/RealTimeTokenService;->mTimeChangedReceiver:Lcom/android/server/RealTimeTokenService$2;

    new-instance v3, Lcom/android/server/RealTimeTokenService$2;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    iput-object v3, p0, Lcom/android/server/RealTimeTokenService;->mBootCompletedReceiver:Lcom/android/server/RealTimeTokenService$2;

    sput-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    :try_start_0
    const-string/jumbo p0, "register for NetWork Broadcasts"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "register for Boot Completed Broadcasts"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "register for TimeChange Broadcasts"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.TIME_SET"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public native checkAllTokenExpiry()I
.end method

.method public native checkTokenExpiry(J)I
.end method

.method public final checkTokenInfoExpiry(J)I
    .locals 2

    const-string/jumbo v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - checkTokenExpiry"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->checkTokenExpiry(J)I

    move-result p0

    return p0
.end method

.method public native getActiveTokenNumber()I
.end method

.method public native initTokenStorage()I
.end method

.method public native registerToken(JJ)I
.end method

.method public final registerTokenInfo(JJ)I
    .locals 2

    const-string/jumbo v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - registerToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/RealTimeTokenService;->registerToken(JJ)I

    move-result p0

    return p0
.end method

.method public native setUserTime(J)I
.end method

.method public native unregisterAllToken()I
.end method

.method public final unregisterAllTokenInfo()I
    .locals 2

    const-string/jumbo v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - unregisterAllToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->unregisterAllToken()I

    move-result p0

    return p0
.end method

.method public native unregisterToken(J)I
.end method

.method public final unregisterTokenInfo(J)I
    .locals 2

    const-string/jumbo v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - unregisterToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->unregisterToken(J)I

    move-result p0

    return p0
.end method
