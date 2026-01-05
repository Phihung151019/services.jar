.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->init()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
