.class public final Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$2:Lcom/android/server/BatteryService$30;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$30;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$30;

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$30;

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
