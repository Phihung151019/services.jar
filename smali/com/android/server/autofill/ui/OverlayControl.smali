.class public final Lcom/android/server/autofill/ui/OverlayControl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final setOverlayAllowed(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    const/4 v5, -0x1

    const/16 v1, 0x18

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v4, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    const/4 v6, -0x1

    move v3, v2

    const/16 v2, 0x2d

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_0
    return-void
.end method
