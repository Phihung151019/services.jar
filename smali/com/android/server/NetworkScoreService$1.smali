.class public final Lcom/android/server/NetworkScoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkScoreService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/NetworkScoreService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget p1, p0, Lcom/android/server/NetworkScoreService$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    sget-boolean p1, Lcom/android/server/NetworkScoreService;->DBG:Z

    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Received "

    const-string v2, " for userId "

    const-string/jumbo v3, "NetworkScoreService"

    invoke-static {p2, v0, p1, v2, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-virtual {p0, p2}, Lcom/android/server/NetworkScoreService;->onUserUnlocked(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
