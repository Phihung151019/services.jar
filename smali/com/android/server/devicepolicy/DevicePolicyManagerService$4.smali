.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAdminArtifacts(ILandroid/content/ComponentName;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->startUninstallIntent(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "KnoxPolicyHelper"

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "failed to remove active admin from edm database "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "removeActiveAdminLocked() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
