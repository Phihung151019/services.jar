.class public final Lcom/android/server/display/DlnaController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/DlnaController$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/display/DlnaController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDlnaDevice;->setConnectionState(I)V

    iget-object v0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/DlnaController$1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/android/server/display/DlnaController$1;-><init>(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    if-eqz v0, :cond_1

    const-string v2, "DlnaController"

    const-string/jumbo v3, "unlinkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object p0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    :cond_1
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/display/DlnaController;

    iget-object v1, v1, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/display/DlnaController;

    iget-object v2, v2, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    const-string/jumbo v3, "player_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendStatusChangedBroadcast::SEM_ACTION_DLNA_STATUS_CHANGED state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DlnaController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DlnaController;

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_1
    const-string v0, "DlnaController"

    const-string/jumbo v1, "sendDisconnectionRequestBroadcast::DLNA_DISCONNECTION_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/display/DlnaController;

    iget-object v1, v1, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DlnaController;

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v2, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
