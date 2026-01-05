.class public final Lcom/android/server/BatteryService$28;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$batteryDeterioration:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/BatteryService$28;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$28;->this$0:Lcom/android/server/BatteryService;

    iput p2, p0, Lcom/android/server/BatteryService$28;->val$batteryDeterioration:I

    iput-object p3, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, -0x1

    const-string v1, "BatteryService"

    const-string/jumbo v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/BatteryService$28;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/android/server/BatteryService$28;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/BatteryService$28;->val$batteryDeterioration:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/BatteryService$28;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/BatteryService$28;->val$batteryDeterioration:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
