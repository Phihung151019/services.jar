.class public final Lcom/android/server/display/WifiDisplayAdapter$11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$mode:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "screenratiovalue"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wlan.wfd.screenratiovalue"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
