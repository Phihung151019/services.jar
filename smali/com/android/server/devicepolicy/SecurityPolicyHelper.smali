.class public final Lcom/android/server/devicepolicy/SecurityPolicyHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDPM:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez p1, :cond_0

    const-string/jumbo p1, "device_policy"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method
