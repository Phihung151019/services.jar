.class public final Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$2;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$2;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    iget-object p1, p1, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo p2, "com.android.settings"

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$2;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
