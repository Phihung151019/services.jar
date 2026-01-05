.class public final Lcom/android/server/alarm/AppSyncInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2, p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget v0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    iput-boolean v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    iput-boolean v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    iput-boolean v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    iput-boolean v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p2, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    const-string/jumbo p2, "account"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManager;

    if-eqz p1, :cond_6

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignore Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSyncInfo"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
