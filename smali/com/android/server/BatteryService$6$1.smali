.class public final Lcom/android/server/BatteryService$6$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$otgEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$2;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;ZB)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;ZC)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BatteryService"

    iget v1, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "/sys/class/power_supply/battery/wc_tx_en"

    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success to set wirelssPowerSharingEnable as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "fail to disable wirelssPowerSharingEnable"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fastWirelessAutoModeEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    const-string v2, "/sys/class/power_supply/otg/online"

    invoke-static {v2, v1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success to set otgEnable as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$30;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/BatteryService$30;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "fail to set otgEnable"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
