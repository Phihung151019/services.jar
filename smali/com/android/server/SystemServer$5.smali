.class public final Lcom/android/server/SystemServer$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/SystemServer$5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    iget p0, p0, Lcom/android/server/SystemServer$5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "SystemServer"

    const-string/jumbo v0, "before SemAuthnrService adding"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/SemAuthnrService;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/android/server/knox/dar/DarManagerService;

    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/server/enterprise/mpos/MPOSService;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/mpos/MPOSService;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    new-instance v0, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    const-string v1, "IcccManagerService"

    const-string/jumbo v2, "Start IcccManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
