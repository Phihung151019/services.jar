.class public final Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DataConnectionStats;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DataConnectionStats;Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onDataActivity(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method public final onDataConnectionStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    iput-object p1, v0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    iput p1, v0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method
