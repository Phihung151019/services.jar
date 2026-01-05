.class public final Lcom/android/server/am/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public mDataState:I

.field public final mListenerHandler:Landroid/os/Handler;

.field public mNrState:I

.field public final mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSimState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    new-instance v0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;

    invoke-direct {v0, p2}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/am/DataConnectionStats;Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;)V

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    return-void
.end method


# virtual methods
.method public final notePhoneDataConnectionState()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    if-ne v0, v3, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    move v6, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    goto :goto_2

    :goto_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    iget v9, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "DataConnectionStats"

    const-string v1, "Error noting data connection state"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    :cond_1
    const-string v0, "LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PIN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "PUK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    :cond_5
    return-void
.end method
