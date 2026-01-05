.class public final Lcom/android/server/enterprise/location/LocationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/location/LocationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/location/LocationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy$1;->this$0:Lcom/android/server/enterprise/location/LocationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy$1;->this$0:Lcom/android/server/enterprise/location/LocationPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->updateSystemUIMonitor$4(I)V

    :cond_0
    return-void
.end method
