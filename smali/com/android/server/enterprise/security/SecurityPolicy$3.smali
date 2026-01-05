.class public final Lcom/android/server/enterprise/security/SecurityPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v1, "action = "

    const-string v2, ", userId = "

    const-string/jumbo v3, "SecurityPolicy"

    invoke-static {p2, v1, v0, v2, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p1, "Saving Device safe mode to true in generic table"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "deviceBootMode"

    invoke-virtual {p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "Sending broadcast: com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
