.class public final Lcom/android/server/BatteryService$9$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$9$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "BatteryService"

    iget v2, p0, Lcom/android/server/BatteryService$9$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "Dex Exit"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "Dex Start"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
