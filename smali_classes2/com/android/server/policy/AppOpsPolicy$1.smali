.class public final Lcom/android/server/policy/AppOpsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    iget-object p2, p2, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string/jumbo v0, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
