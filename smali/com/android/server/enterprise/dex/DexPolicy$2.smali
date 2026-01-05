.class public final Lcom/android/server/enterprise/dex/DexPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DexPolicyService"

    if-nez p2, :cond_0

    const-string/jumbo p0, "action is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo p0, "dex exit "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string/jumbo p0, "dex enter "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2, v2, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_4
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mhandleDexModePackageEnable(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_5
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {p2}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-boolean p2, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "desktopmode"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    invoke-virtual {v0, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    sput-boolean p1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string/jumbo p1, "registerDexBlocker was registered"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p1, "registerDexBlocker was failed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "mirror_built_in_display"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x35f22cb2 -> :sswitch_2
        0x8a75b96 -> :sswitch_1
        0x6c272afe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
