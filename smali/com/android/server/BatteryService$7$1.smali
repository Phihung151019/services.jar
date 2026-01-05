.class public final Lcom/android/server/BatteryService$7$1;
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

    iput p2, p0, Lcom/android/server/BatteryService$7$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BatteryService"

    iget v1, p0, Lcom/android/server/BatteryService$7$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo v1, "notify the misc event"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "/sys/class/sec/switch/hiccup"

    const-string v2, "DISABLE"

    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo v1, "success to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo v1, "fail to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
